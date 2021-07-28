local term = require("FTerm.terminal")

local gitui = term:new():setup({
    cmd = "gitui",
    dimensions = {
        height = 0.9,
        width = 0.9
    }
})

 -- Use this to toggle gitui in a floating terminal
function _G.__fterm_gitui()
    gitui:toggle()
end

local lazygit = term:new():setup({
    cmd = "lazygit"
})

function _G.__fterm_lazygit()
    lazygit:toggle()
end

local top = term:new():setup({
    cmd = "bpytop"
})

 -- Use this to toggle bpytop in a floating terminal
function _G.__fterm_top()
    top:toggle()
end
