return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        require('telescope').setup{
            -- Key Bindings --
            vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { silent = true, desc = "Find Files" }),
            vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { silent = true, desc = "Find Buffers" })
        }
    end
}
