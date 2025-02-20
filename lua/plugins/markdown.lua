return {
    "MeanderingProgrammer/render-markdown.nvim",
    config = function() 
        require('render-markdown').setup({
            enabled = true,
            heading = {
                enabled = true,
                icons = {},
                signs = {},
            },
            latex = {
                enabled = false,
            },
            code = {
                style = 'normal',
            },
            anti_conceal = {
                enabled = false,
            },
            link = {
                enabled = false,
            },
        })
    end
}
