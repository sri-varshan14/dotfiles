local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    -- The Magix of sidebar
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },

    },

    -- You memoryloss patient
    {
        "folke/which-key.nvim"
    },

    -- Eye orgasm
    {
        'folke/tokyonight.nvim'
    },

    {
        "catppuccin/nvim", name = "catppuccin"
    },

    -- Keep your hands free
    {
        'nvim-telescope/telescope.nvim', version = '0.1.1',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    -- See down
    {
        'feline-nvim/feline.nvim'
    },

    -- What color is this #ff0000?
    {
        'norcalli/nvim-colorizer.lua'
    },

    -- Hate doing twice
    {
        'windwp/nvim-autopairs'
    },

    -- God will also code along with you
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },

    -- Tab! Tab! Tab!
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            --'hrsh7th/cmp-vsnip',
            --'hrsh7th/vim-vsnip',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            "rafamadriz/friendly-snippets", -- For HTML and JS
        },
    },

    -- Tree
    {
        'nvim-treesitter/nvim-treesitter'
    },

    -- I need to blame
    {
        'lewis6991/gitsigns.nvim'
    },

    {
        'goolord/alpha-nvim',
    },

    {
        'akinsho/bufferline.nvim', version = 'v3.*',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    {
        'windwp/nvim-ts-autotag'
    },

    {
        'simrat39/rust-tools.nvim'
    }
})
