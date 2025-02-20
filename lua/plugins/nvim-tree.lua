
return {
    "nvim-tree/nvim-tree.lua",
    config = function() 
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 25,
            },
            renderer = {
                group_empty = true,
                icons = {
                    show = {
                        file = false,
                        folder = false,
                        folder_arrow = false,
                        git = false,
                        modified = false,
                        hidden = false,
                        diagnostics = false,
                        bookmarks = false,
                    },
                },
            },
            filters = {
                dotfiles = false,
            },
        })
    end
}
