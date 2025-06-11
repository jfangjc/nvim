return {

    { "dracula/vim", name = "dracula"},
    { "nyoom-engineering/oxocarbon.nvim", name = "oxocarbon" },
    { "rebelot/kanagawa.nvim", name = "kanagawa" }, 

    -- LSP
    "neovim/nvim-lspconfig",
    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },
        version = '1.*'
    },

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
    {"folke/noice.nvim", event = "VeryLazy", dependencies = { "MunifTanjim/nui.nvim" }}
}


