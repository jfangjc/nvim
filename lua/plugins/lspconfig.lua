return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable('clangd')
        vim.lsp.config('clangd', {
            cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
            init_options = {
                fallbackFlags = { '-std=c11' },
            },
        })
    end,
}
