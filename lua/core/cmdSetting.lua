-- Create metadata when first time into a markdown file --
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.md",
    callback = function()
        local date = os.date("%Y-%m-%d")
        local handle = io.popen("whoami")
        local username = handle:read("*a")
        local author = string.gsub(username, "\n", "")
        handle.close()
        local lines = {
            "---",
            "title: <++>",
            "author: " .. author,
            "date: " .. date,
            "categories: [<++>]",
            "summary: ",
            "---",
            "<++>"
        }
        vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
        -- Find the location of <++>, delete it and enter insert mode
    end
})
