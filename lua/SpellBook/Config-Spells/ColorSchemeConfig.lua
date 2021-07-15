--          )   (        )   (
--   (   ( /(   )\ )  ( /(   )\ )
--   )\  )\()) (()/(  )\()) (()/(
-- (((_)((_)\   /(_))((_)\   /(_))
-- )\___  ((_) (_))    ((_) (_))
--((/ __|/ _ \ | |    / _ \ | _ \
-- | (__| (_) || |__ | (_) ||   /
--  \___|\___/ |____| \___/ |_|_\

vim.cmd('let g:nvcode_termcsokai=256')

-- Sonokai

vim.g.sonokai_style = 'andromeda'

-- vim.cmd('colorscheme sonokai')

-- vim.cmd('colorscheme zephyr')

local base16 = require "base16"

base16(base16.themes["onedark"], true)

require('SpellBook.Config-Spells.Highlights')
