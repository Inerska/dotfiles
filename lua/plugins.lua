-- Global configuration storage
QConfig = {}

-- basic nvim options
local function setup_basic_nvim_options()
    -- use <space> as leader key
    vim.g.mapleader = " "
    vim.opt.timeoutlen = 400
    vim.opt.termguicolors = true
    vim.opt.title = true
    vim.opt.clipboard = "unnamedplus"
    vim.opt.cmdheight = 1
    vim.opt.cul = true
    -- disable tilde on end of buffer: https://github.com/neovim/neovim/pull/8546#issuecomment-643643758
    vim.opt.fillchars = { eob = " " }
    vim.opt.hidden = true
    vim.opt.ignorecase = true
    vim.opt.mouse = "a"
    -- Numbers
    vim.opt.number = true
    vim.opt.ruler = false
    -- Don't show any numbers inside terminals
    vim.cmd [[ au TermOpen term://* setlocal nonumber norelativenumber | setfiletype terminal ]]
    vim.opt.signcolumn = "number"
    vim.opt.splitbelow = true
    vim.opt.splitright = true
    vim.cmd[[filetype plugin indent on]]
    vim.o.smarttab = true
    vim.o.autoindent = true
    vim.o.smartindent = true
    vim.o.shiftwidth = 4
    vim.o.tabstop = 4
    vim.o.softtabstop = 4
    vim.o.expandtab = true
    vim.o.statusline='%f  %y%m%r%h%w%=[%l,%v]      [%L,%p%%] %n'
end
setup_basic_nvim_options()

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim'..install_path)
    execute '!packadd packer.nvim'
end
require('lualine').setup()
vim.g.mapleader = "<Space>"
vim.cmd 'set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab'
vim.cmd 'set termguicolors'
vim.cmd 'set t_Co=256'
vim.cmd 'colorscheme nightfox'
return require('packer').startup(function()
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    use 'EdenEast/nightfox.nvim'
    -- Telescope
    use 
    {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
    }

    -- Dashboard
    use 
    {
        "glepnir/dashboard-nvim",

        config = function()
            require("plugin.config.dashboard")
        end,
    }

    -- Better escape
    use
    {
        "jdhao/better-escape.vim",

        config = function()
            require("plugin.config.better_escape")
        end,
    } 

    -- lsp

    use {
        'neovim/nvim-lspconfig',
        requires = "williamboman/nvim-lsp-installer",
        before = "cmp-nvim-lsp",
        config = function()
            require('plugin.config.lsp')
        end
    }
    -- Lua
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    -- Lsp lsp_signature
    use {
        "ray-x/lsp_signature.nvim",
        after = "nvim-lspconfig",
        config = function()
            require('lsp_signature').setup{
                bind = true,
                doc_lines = 2,
                floating_window = true,
                fix_pos = true,
                hint_enable = true,
                hint_prefix = " ",
                hint_scheme = "String",
                hi_parameter = "Search",
                max_height = 22,
                max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
                handler_opts = {
                    border = "single", -- double, single, shadow, none
                },
                zindex = 200, -- by default it will be on top of all floating windows, set to 50 send it to bottom
                padding = "", -- character to pad on left and right of signature can be ' ', or '|'  etc
            }
        end
    }

    -- Luasnips + cmp related in insert mode
    use({
        "L3MON4D3/LuaSnip",
        wants = "friendly-snippets",
        config = function()
            require("plugin.config.luasnip")
        end,
    })
    use({ "rafamadriz/friendly-snippets" })
    use {
        "windwp/nvim-autopairs",
    }

	use({ "saadparwaiz1/cmp_luasnip", after = "nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" })
	use { 
                "hrsh7th/cmp-nvim-lsp",
                after = {
                    "nvim-cmp",
                    "nvim-lspconfig"
                }   
            }
	use({ "hrsh7th/cmp-buffer", after = "nvim-cmp" })
	use({ "hrsh7th/cmp-path", after = "nvim-cmp" })


    -- CMP
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            "onsails/lspkind-nvim",
       },
        event = "InsertEnter",
        config = function()
            require('plugin.config.cmp')
        end,
    }
    -- TreeSitter
    use
    {
        "nvim-treesitter/nvim-treesitter"
    }

    -- LuaLine
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        options = {theme = 'nightfox'}
    }

    -- Trouble
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- Spotify
    use {
        "stsewd/spotify.nvim"
    }

    -- Bufferline
    use {
      "akinsho/bufferline.nvim",
      after = "nvim-web-devicons",
      config = function()
          require"plugin.config.bufferline"
      end
   }

    vim.api.nvim_set_keymap("n", "gk", "<cmd>Spotify play/pause<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "gl", "<cmd>Spotify next<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "gh", "<cmd>Spotify prev<CR>", { noremap = true, silent = true })

end)
