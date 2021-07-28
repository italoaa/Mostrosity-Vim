local actions = require('telescope.actions')

require('telescope').setup {
    defaults = {
        find_command = {'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case'},
        -- prompt_prefix = " ",
        prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        layout_config = {
            width = 0.75,
            prompt_position = "bottom",
            preview_cutoff = 120,
            horizontal = { mirror = false },
            vertical = { mirror = false },
},
        file_sorter = require'telescope.sorters'.get_fzy_sorter,
        file_ignore_patterns = {'packer_compiled'},
        generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
        path_display = {'shorten'},
        border = {},
        borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
        color_devicons = true,
        use_less = true,
        set_env = {['COLORTERM'] = 'truecolor'}, -- default = nil,
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker,
        mappings = {
            i = {
                ["<C-q>"] = actions.send_to_qflist,
            },
            n = {
                ["Esc"] = actions.close,
                -- Normal mode actions
            }
        }
    },
    extensions = {
        fzy_native = {override_generic_sorter = false, override_file_sorter = true}
    }
}

-- Mappings	Action
-- <C-n>/<Down>	Next item
-- <C-p>/<Up>	Previous item
-- j/k          Next/previous (in normal mode)
-- <cr>         Confirm selection
-- <C-x>        go to file selection as a split
-- <C-v>        go to file selection as a vsplit
-- <C-t>        go to a file in a new tab
-- <C-u>        scroll up in preview window
-- <C-d>        scroll down in preview window
-- <C-c>        close telescope
-- <Esc>        close telescope (in normal mode)

require'telescope'.load_extension('project')
--

local M = {}
M.search_dotfiles = function ()
    require("telescope.builtin").find_files({
        prompt_title = "< Da Dot Files >",
        cwd = "~/.config/",
    })
end

return M
