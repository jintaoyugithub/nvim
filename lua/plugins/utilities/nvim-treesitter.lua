return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require 'nvim-treesitter.configs'.setup {
            -- A list of parser names, or "all" (the five listed parsers should always be installed)
            ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query" },

            auto_install = true,

            highlight = {
                enable = true,
            },

            -- Set custom file type hightlight --
            vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
                pattern = { "*.fx", ".fxh" },
                command = "set filetype=hlsl"
            })

        }
    end
}
