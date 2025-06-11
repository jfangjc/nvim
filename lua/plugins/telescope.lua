return{
    "nvim-telescope/telescope.nvim",
    config = function()
        require("telescope").setup{
          defaults = {
            mappings = {
              i = {
                ["<C-h>"] = "which_key",
                ["<C-j>"] = "move_selection_next",
                ["<C-K>"] = "move_selection_previous"
              }
            },
            file_ignore_patterns = {
                ".git",
                "%.o",
                "%.elf"
            },
          },
          pickers = {
            find_files = {
              theme = "dropdown",
            }
          },
          extensions = {
              file_browser = {
                  theme = "catppuccin"
              }
          }
        }

        local builtin = require('telescope.builtin')
        --vim.keymap.set('n', '<C-f>', builtin.find_files, {})
        --vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
        --vim.keymap.set('n', '<leader>b', builtin.buffers, {})
        --vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
    end,
}
