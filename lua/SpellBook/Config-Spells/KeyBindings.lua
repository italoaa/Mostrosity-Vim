--$$\                           $$\       $$\                 $$\ $$\
--$$ |                          $$ |      \__|                $$ |\__|
--$$ |  $$\  $$$$$$\  $$\   $$\ $$$$$$$\  $$\ $$$$$$$\   $$$$$$$ |$$\ $$$$$$$\   $$$$$$\   $$$$$$$\
--$$ | $$  |$$  __$$\ $$ |  $$ |$$  __$$\ $$ |$$  __$$\ $$  __$$ |$$ |$$  __$$\ $$  __$$\ $$  _____|
--$$$$$$  / $$$$$$$$ |$$ |  $$ |$$ |  $$ |$$ |$$ |  $$ |$$ /  $$ |$$ |$$ |  $$ |$$ /  $$ |\$$$$$$\
--$$  _$$<  $$   ____|$$ |  $$ |$$ |  $$ |$$ |$$ |  $$ |$$ |  $$ |$$ |$$ |  $$ |$$ |  $$ | \____$$\
--$$ | \$$\ \$$$$$$$\ \$$$$$$$ |$$$$$$$  |$$ |$$ |  $$ |\$$$$$$$ |$$ |$$ |  $$ |\$$$$$$$ |$$$$$$$  |
--\__|  \__| \_______| \____$$ |\_______/ \__|\__|  \__| \_______|\__|\__|  \__| \____$$ |\_______/
--                    $$\   $$ |                                                $$\   $$ |
--                    \$$$$$$  |                                                \$$$$$$  |
--                     \______/                                                  \______/
--
--

vim.api.nvim_set_keymap('n', '-', ':RnvimrToggle<CR>', {noremap = true, silent = true})

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- Terminal window navigation
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", { silent = true, noremap = true })
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", { silent = true, noremap = true })
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", { silent = true, noremap = true })
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-h>", "<C-\\><C-N><C-w>h", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<C-\\><C-N><C-w>j", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<C-\\><C-N><C-w>k", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<C-\\><C-N><C-w>l", { silent = true, noremap = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { silent = true, noremap = true })

-- Movement
vim.api.nvim_set_keymap('i',',,','<esc>/<++><cr>c4l',{silent= false})
vim.api.nvim_set_keymap('n',',,','<esc>/<++><cr>c4l',{silent= false})


-- Auto remove White space
vim.api.nvim_set_keymap('n','§',":%s/\\s\\+$//e<cr>",{noremap = true, silent = true})

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape (me too haha)
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Move current line / block with Alt-j/k ala vscode.
-- vim.api.nvim_set_keymap("n", "<D-j>", ":m .+1<CR>==", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<D-k>", ":m .-2<CR>==", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<D-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<D-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("x", "<D-j>", ":m '>+1<CR>gv-gv", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("x", "<D-k>", ":m '<-2<CR>gv-gv", { noremap = true, silent = true })
-- 





-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')


-- fix to get netrw's gx command to work correctly
vim.api.nvim_set_keymap('n', 'gx', ":call netrw#BrowseX(expand((exists('g:netrw_gx')? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())<cr>", {noremap = true, silent = true})

vim.cmd('vnoremap p "0p')
vim.cmd('vnoremap P "0P')

-- Toggle the QuickFix window
vim.api.nvim_set_keymap('', '<C-q>', ':call QuickFixToggle()<CR>', {noremap = true, silent = true})

-- Set leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- telescope
vim.api.nvim_set_keymap('n', '<Leader>f', ':Telescope find_files<CR>', {noremap = true, silent = true})

-- dashboard
vim.api.nvim_set_keymap('n', '<Leader>;', ':Dashboard<CR>', {noremap = true, silent = true})

-- Comments
vim.api.nvim_set_keymap("n", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})

-- close buffer
vim.api.nvim_set_keymap("n", "<leader>c", ":BufferClose<CR>", {noremap = true, silent = true})

-- buffer navigation
vim.api.nvim_set_keymap('n', '<TAB>', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferPrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-x>', ':BufferClose<CR>', { noremap = true, silent = true })

-- =========================== Telescope/project ====================================

vim.api.nvim_set_keymap('n','π',"<cmd>lua require'telescope'.extensions.project.project{}<cr>",{ noremap = true, silent = true })

-- =========================== Telescope/project ====================================

vim.api.nvim_set_keymap('n','<leader>F','<cmd>Telescope frecency<cr>',{ noremap = true, silent = true})

-- =========================== Compe ====================================

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

  vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", { noremap = true, silent = true, expr = true })
  vim.api.nvim_set_keymap("i", "<CR>", "compe#confirm('<CR>')", { noremap = true, silent = true, expr = true })
  vim.api.nvim_set_keymap("i", "<C-e>", "compe#close('<C-e>')", { noremap = true, silent = true, expr = true })
  vim.api.nvim_set_keymap("i", "<C-f>", "compe#scroll({ 'delta': +4 })", { noremap = true, silent = true, expr = true })
  vim.api.nvim_set_keymap("i", "<C-d>", "compe#scroll({ 'delta': -4 })", { noremap = true, silent = true, expr = true })

-- ============================ FTerm ================================

vim.api.nvim_set_keymap("n", 'ƒ',"<cmd>lua require('FTerm').open()<cr>",{noremap = true, silent = true})
vim.api.nvim_set_keymap("t", 'ƒ',"<cmd>lua require('FTerm').close()<cr>",{noremap = true, silent = true})

-- ============================ Telescope ================================

vim.api.nvim_set_keymap("n","∂","<cmd>lua require('SpellBook.Packer-Spells.Telescope').search_dotfiles()<cr>",{noremap = true, silent = true})

-- ============================ Which Key ================================

local mappings = {
    ["/"] = "Comment",
    ["c"] = "Close Buffer",
    ["e"] = "Explorer",
    ["f"] = "Find File",
    ["F"] = "Frecency Algo",
    ["h"] = "No Highlight",
    d = {
        name = "+Debug",
        b = {"<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint"},
        c = {"<cmd>lua require'dap'.continue()<cr>", "Continue"},
        i = {"<cmd>lua require'dap'.step_over()<cr>", "Step Into"},
        o = {"<cmd>lua require'dap'.step_into()<cr>", "Step Over"},
        s = {"<cmd>lua require'dap'.continue()<cr>", "Start"},
        h = {"<cmd> require'dap.ui.variables'.hover(function () return vim.fn.expand('<cexpr>') end)<cr>", "hover - window"},
        v = {"<cmd>lua require('dapui').toggle()<cr>","dap ui"},
    },
    g = {
        name = "+Git",
        o = {"<cmd>Telescope git_status<cr>", "Open changed file"},
        b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
        c = {"<cmd>Telescope git_commits<cr>", "Checkout commit"},
        C = {"<cmd>Telescope git_bcommits<cr>", "Checkout commit(for current file)"},
        u = {"<cmd>call v:lua.__fterm_gitui()<cr>","Git Ui"}
    },
    l = {
        name = "+LSP",
        f = {"<cmd>LspFormatting<cr>", "Format"},
        i = {"<cmd>LspInfo<cr>", "Info"},
        t = {"<cmd>LspTypeDefinition<cr>", "Type Definition"},
    },
    s = {
        name = "+Search",
        b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = {"<cmd>Telescope find_files<cr>", "Find File"},
        m = {"<cmd>Telescope marks<cr>", "Marks"},
        M = {"<cmd>Telescope man_pages<cr>", "Man Pages"},
        r = {"<cmd>Telescope oldfiles<cr>", "Open Recent File"},
        R = {"<cmd>Telescope registers<cr>", "Registers"},
        t = {"<cmd>Telescope live_grep<cr>", "Text"}
    },
    t = {
        name = "+Term",
        g = {"<cmd>call v:lua.__fterm_gitui()<cr>","Git Ui"},
        l = {"<cmd>call v:lua.__fterm_lazygit()<cr>","Git Ui"},
        t = {"<cmd>call v:lua.__fterm_top()<cr>","bpytop"}
    },
    p = {
        name = "+Packer",
        I = {"<cmd>PackerInstall<cr>","PackerInstall"},
        C = {"<cmd>PackerCompile<cr>","PackerCompile"},
        S = {"<cmd>PackerSync<cr>","PackerSync"},
        s = {"<cmd>PackerStatus<cr>","PackerStatus"},
    },
    H = {
        name = "+Harpoon options",
        n = {'<cmd>lua require("harpoon.mark").add_file()<cr>', 'new harpoon mark'},
        m = {'<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', 'List marks'}
    },
    C = {
        name = "+Config",
        k = {'<cmd>lua require("harpoon.ui").nav_file(1)<cr>', 'Jump to keybindings'},
        p = {'<cmd>lua require("harpoon.ui").nav_file(2)<cr>', 'Jump to Packer'},
        r = {'<cmd>lua require("SpellBook.Packer-Spells.Dash").cycle()<cr>', 'reload Dashboard'},
    },

}

require("which-key").setup {
    plugins = {
        marks = false, -- shows a list of your marks on ' and `
        registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
            operators = false, -- adds help for operators like d, y, ...
            motions = false, -- adds help for motions
            text_objects = false, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = true -- bindings for prefixed with g
        }
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key andit's label
        group = "+" -- symbol prepended to a group
    },
    window = {
        border = "single", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = {1, 0, 1, 0}, -- extra window margin [top, right, bottom, left]
        padding = {2, 2, 2, 2} -- extra window padding [top, right, bottom, left]
    },
    layout = {
        height = {min = 4, max = 25}, -- min and max height of the columns
        width = {min = 20, max = 50}, -- min and max width of the columns
        spacing = 3 -- spacing between columns
    },
    hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ ", ","}, -- hide mapping boilerplate
    show_help = true -- show help message on the command line when the popup is visible
}

local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false -- use `nowait` when creating keymaps
}


local wk = require("which-key")

wk.register(mappings, opts)
