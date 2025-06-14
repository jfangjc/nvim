return {
    "saghen/blink.cmp",
    ---@module "blink.cmp"
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = 'default',
            ['<C-k>'] = { 'select_prev', 'fallback' },
            ['<C-j>'] = { 'select_next', 'fallback' },
            ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
            ['<CR>'] = { "select_and_accept", "fallback" },
        },
        completion = {
            documentation = { auto_show = false },
            menu = {
                draw = {
                    columns = {
                        { "label", "label_description", gap = 1 },
                        { "kind" }
                    }
                }
            },
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        cmdline = { enabled = true },
    },
    opts_extend = { "sources.default" }
}
