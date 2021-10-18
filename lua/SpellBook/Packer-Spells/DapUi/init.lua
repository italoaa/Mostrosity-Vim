require("dapui").setup({
  icons = {
    expanded = "▾",
    collapsed = "▸"
  },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = {"<CR>", "<2-LeftMouse>"},
    open = {"o",'º'},
    remove = "d",
    edit = "e",
  },
  sidebar = {
    open_on_start = false,
    elements = {
      -- You can change the order of elements in the sidebar
      "scopes",
      "stacks",
      "watches"
    },
    size = 50,
    position = "left" -- Can be "left" or "right"
  },
  tray = {
    open_on_start = false,
    elements = {
      "repl"
    },
    size = 0,
    position = "bottom" -- Can be "bottom" or "top"
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil   -- Floats will be treated as percentage of your screen.
  }
})
