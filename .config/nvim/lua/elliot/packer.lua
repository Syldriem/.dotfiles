-- this file can be loaded by calling `lua require("plugins")`from your init.vim
--
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
--
return require("packer").startup(function(use)
-- Packer can manage itself
    use "wbthomason/packer.nvim"

    use("gruvbox-community/gruvbox")
    use "folke/tokyonight.nvim"
    use({ "rose-pine/neovim", as = "rose-pine" })

    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use("ThePrimeagen/harpoon")
    use("ThePrimeagen/git-worktree.nvim")
    use({
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons", opt = true }
    })

    use("junegunn/fzf.vim")
    use("junegunn/fzf")
    use("folke/zen-mode.nvim")

    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
    use("mbbill/undotree")
    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")
end)
