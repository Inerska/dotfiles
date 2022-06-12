vim.cmd [[packadd packer.nvim]]

require"test"

vim.cmd "set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab"
vim.cmd "set termguicolors"
vim.cmd "set t_Co=256"

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Lsp

    use {
        "neovim/nvim-lspconfig",
        requires = "williamboman/nvim-lsp-installer",
        event = "BufRead",
        config = function()
            require"plugin.config.lsp"
        end
    }

    use { "j-hui/fidget.nvim", ext = "fidget",
    config = function()
        require("fidget").setup{}
    end
}

use"github/copilot.vim"

use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
use { 'ms-jpq/coq.thirdparty', branch = '3p' }
use {
    'ms-jpq/coq_nvim',
    branch = 'coq',
    config = function()
        require("coq")

        local fn = vim.fn
        local deps_path = fn.stdpath('data')..'/site/pack/packer/start/coq_nvim/.vars/runtime/requirements.lock'
        if fn.empty(fn.glob(deps_path)) > 0 then
            vim.cmd [[COQdeps]]
        end

        vim.cmd [[COQnow -s]]
    end
}


use "rcarriga/nvim-notify"


use {
    "rebelot/kanagawa.nvim",
    config = function()
        vim.cmd [[colorscheme kanagawa]]
    end,
}

use 'nvim-treesitter/nvim-treesitter'


use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
}

vim.api.nvim_set_keymap("n", "gf", "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gt", "<cmd>lua require('telescope.builtin').help_tags()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gm", "<cmd>lua require'test'.printHello()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gs", "<cmd>:PackerSync<cr>", { noremap = true, silent = true })

-- copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', {silent=true, expr=true})

    end)
