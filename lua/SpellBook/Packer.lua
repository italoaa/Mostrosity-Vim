--888   Y88b                  888
--888    888                  888
--888   d88P 8888b.   .d8888b 888  888  .d88b.  888d888
--8888888P"     "88b d88P"    888 .88P d8P  Y8b 888P"
--888       .d888888 888      888888K  88888888 888
--888       888  888 Y88b.    888 "88b Y8b.     888
--888       "Y888888  "Y8888P 888  888  "Y8888  888
--

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end


local Packer_Status, Packer = pcall(require,"packer")
if not Packer_Status then
    return
end


Packer.init {
  ensure_dependencies   = true, -- Should packer install plugin dependencies?
  plugin_package = 'packer', -- The default package for plugins
  max_jobs = nil, -- Limit the number of simultaneous jobs. nil means no limit
  compile_on_sync = true, -- During sync(), run packer.compile()
  transitive_opt = true, -- Make dependencies of opt plugins also opt by default
  transitive_disable = true, -- Automatically disable dependencies of disabled plugins
  auto_reload_compiled = true, -- Automatically reload the compiled file after creating it.
  git = {
    cmd = 'git', -- The base command for git operations
    clone_timeout = 500, -- Timeout, in seconds, for git clones
  },
  display = {
--    open_fn  = function() return require'packer.util'.float() end,
--    An optional function to open a window for packer's display
    prompt_border = 'single', -- Border style of prompt popups.
    keybindings = { -- Keybindings for the display window
      quit = 'q',
      toggle_info = '<CR>',
      diff = 'd',
      prompt_revert = 'r',
    }
  },
}


return require("packer").startup(function(use)
    -- Packer
    use "wbthomason/packer.nvim"

    -- Treesitter
    use {"nvim-treesitter/nvim-treesitter",
            run = ':TSUpdate',
            config = function() require('SpellBook.Packer-Spells.TreeSitter') end
        }

    -- ColorSchemes
    use {'christianchiarulli/nvcode-color-schemes.vim'}
    use{'sainnhe/sonokai'}
    use{'glepnir/zephyr-nvim'}
    use "siduck76/nvim-base16.lua"
    use{"dylanaraps/wal.vim"}


    -- Lsp
    use {'neovim/nvim-lspconfig'}
    use {"kabouzeid/nvim-lspinstall"}

    -- Completion
    use {'hrsh7th/nvim-compe',
            event = "InsertEnter",
            config = function()
                require('SpellBook.Packer-Spells.Compe').config()
            end
        }

    -- Navigator for code analysis
    -- use {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'},
    --     config = function ()
    --         require('SpellBook.Packer-Spells.Navi')
    --     end
    -- }


    -- Git Signs on the side of the buffer
    use {'lewis6991/gitsigns.nvim',
            requires = {
                'nvim-lua/plenary.nvim'
              },
            config = function() require('SpellBook.Packer-Spells.GitSigns') end
           -- config = function() require('gitsigns').setup() end
        }

    -- Coffee script support
    use{"kchmck/vim-coffee-script"}


    -- Practice vim
    use {"ThePrimeagen/vim-be-good"}


    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        {'tami5/sql.nvim'},
        {"nvim-telescope/telescope-frecency.nvim"},
        {'nvim-lua/popup.nvim'},
        {'nvim-lua/plenary.nvim'},
        {'nvim-telescope/telescope-fzy-native.nvim'},
        {'nvim-telescope/telescope-project.nvim'},
        {'nvim-telescope/telescope-ghq.nvim'}
       },
      config = function ()
      	        require('SpellBook.Packer-Spells.Telescope')
      end
    }


    -- Add color to these #FFFFF
    use{'norcalli/nvim-colorizer.lua',
        config = function()
            require('SpellBook.Packer-Spells.Colorizer')
        end
    }

    -- DashBoard
    use{'glepnir/dashboard-nvim',
        config = function ()
            require('SpellBook.Packer-Spells.Dash')
        end
}

    -- Terminal
    use {
    "numtostr/FTerm.nvim",
    config = function()
        require'SpellBook.Packer-Spells.FTerm'
        require("FTerm").setup({
            dimensions  = {
                height = 0.8,
                width = 0.8,
                x = 0.5,
                y = 0.5
            },
            border = 'single' -- or 'double'
        })
    end
    }

    -- Harpoon
    use{'ThePrimeagen/harpoon',
            config = function ()
               require('SpellBook.Packer-Spells.Harpoon')
            end
        }

    -- Snippets
    use{'hrsh7th/vim-vsnip'}
    use{'hrsh7th/vim-vsnip-integ'}
    -- Debugger
    use {"mfussenegger/nvim-dap",
            config = function ()
	            require'SpellBook.Packer-Spells.Dap'
            end
        }
    use { "rcarriga/nvim-dap-ui",
            requires = {"mfussenegger/nvim-dap"},
            config  = function ()
	            require'SpellBook.Packer-Spells.DapUi'
            end
        }
    use{'mfussenegger/nvim-dap-python'}

    -- Formater
    use{'sbdchd/neoformat',
            config = function ()
	            require('SpellBook.Packer-Spells.NeoFormat')
            end
        }

    -- Markdown
    use{'iamcco/markdown-preview.nvim',
            config = function ()
	            require('SpellBook.Packer-Spells.Markdown')
            end
        }

    -- Explorer
    use {"kyazdani42/nvim-tree.lua",
        commit = "fd7f60e242205ea9efc9649101c81a07d5f458bb",
         config = function()
           require("SpellBook.Packer-Spells.NvimTree").config()
         end,
         }
    use {"ahmedkhalf/lsp-rooter.nvim"}

    -- Icons
    use {"kyazdani42/nvim-web-devicons"}

    -- Writing
    use {"windwp/nvim-autopairs",
        config = function ()
           require('SpellBook.Packer-Spells.AutoPairs')
end}
    use {"terrortylor/nvim-comment",
            config = function()
               require('SpellBook.Packer-Spells.Comment')
            end,
}

    -- Indent
    use {"lukas-reineke/indent-blankline.nvim"}

    -- Keybinding
    use {"folke/which-key.nvim"}

    -- Enables tabs for buffers
    use {"romgrk/barbar.nvim"}

    -- Fixes a bug
    use {"felipec/vim-sanegx"}

end)

