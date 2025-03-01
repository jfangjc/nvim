return {
    "neovim/nvim-lspconfig",
    config = function()
        local cmp = require("cmp")
        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-j>'] = cmp.mapping.scroll_docs(-4),
                ['<C-k>'] = cmp.mapping.scroll_docs(4),
                -- ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<Tab>'] = cmp.mapping.confirm({ select = true }),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            },
            {
                { name = 'buffer' },
            }),
        })

        cmp.setup.filetype('gitcommit', {sources = cmp.config.sources({{ name = 'cmp_git' },}, {{ name = 'buffer' },})})

        cmp.setup.cmdline({ '/', '?' }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
              { name = 'buffer' }
            }
        })

        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
              { name = 'path' }
            }, {
              { name = 'cmdline' }
            })
        })
        cmp.setup({
            sources = cmp.config.sources({
                { name = 'render-markdown' },
            }),
        })

        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require('lspconfig')['clangd'].setup {
            capabilities = capabilities
        }
    end,
}

