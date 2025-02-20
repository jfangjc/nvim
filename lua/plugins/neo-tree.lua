return {
    "nvim-neo-tree/neo-tree.nvim",
    config = function() 
        require("neo-tree").setup({
            window = {
                width = 25,
                position = "left",
            },
            git_status = {
                symbols = {
                    added = "",
                    deleted = "",
                    modified = "",
                    renamed = "",
                    untracked = "",
                    ignored = "",
                    unstaged = "",
                    staged = "",
                    conflict = "",
                },
                align = "right",
            },
            renderers = {
                directory = {
                    { "indent" },
                    { "current_filter" },
                    { "container", content = { { "name", zindex = 10 }, }, },
                },
                file = {
                    { "indent" },
                    { "container", content = { { "name", zindex = 10 }, }, },
                },
            },
            event_handlers = {
                {
                    event = "file_open_requested",
                    handler = function()
                        require("neo-tree.command").execute({ action = "close" })
                    end
                },
            },
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                },
            },
        })
    end
}
