return {
    'akinsho/bufferline.nvim',

    version = "*",

    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },

    config = function()
        require("bufferline").setup {
            options = {
                offsets = {
                    {
                        filetype = "Neotree",
                        text = "File Explorer",
                        text_align = "left", -- 或者 "center" 或 "right"
                        separator = true
                    }
                },
            }
        }

        -- Key Bindings --
        vim.api.nvim_set_keymap('n', '<leader>[', ':bn<CR>', { noremap = true })
        vim.api.nvim_set_keymap('n', '<leader>]', ':bp<CR>', { noremap = true })
        vim.api.nvim_set_keymap('n', '<Leader><CR>', ':bd<CR>', { noremap = true })
    end
}
