return {
    "catppuccin/nvim",
    priority = 1000,
    config = function()
        -- load the colorscheme
        vim.cmd.colorscheme("catppuccin")
    end
}
