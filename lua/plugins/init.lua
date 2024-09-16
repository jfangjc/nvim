return {
    -- Colorscheme
    {"catppuccin/nvim",
        priority = 1000,
        lazy = false,
    },
    "rebelot/kanagawa.nvim",
    "marko-cerovac/material.nvim",
    { "rose-pine/neovim", name = "rose-pine" },

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
    {"nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons", lazy = true}},
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    "tpope/vim-fugitive",
    {"akinsho/bufferline.nvim", version = "v3.*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {"ThePrimeagen/harpoon", branch = "harpoon2", requires = {{"nvim-lua/plenary.nvim"}}},
    {"folke/noice.nvim", event = "VeryLazy", dependencies = { "MunifTanjim/nui.nvim" }}, 
}


