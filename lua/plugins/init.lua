return {

    { "dracula/vim", name = "dracula"},

    -- LSP
    "neovim/nvim-lspconfig",

    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",

    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    -- Other plugins
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        }
    },
    "nvim-lualine/lualine.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {"ThePrimeagen/harpoon", branch = "harpoon2", requires = {{"nvim-lua/plenary.nvim"}}},
    {"folke/noice.nvim", event = "VeryLazy", dependencies = { "MunifTanjim/nui.nvim" }}, 
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter'},
    }
}


