return {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    -- lazy = true,
    -- ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",

        -- see below for full list of optional dependencies 👇
    },

    config = function()
        require("obsidian").setup {
            -- Set up the vaults directory
            dir = "$HOME/vaults/",
            notes_subdir = "temp-notes",

            -- Set up completion
            completion = {
                -- Set to false to disable completion.
                nvim_cmp = true,
                -- Trigger completion at 2 chars.
                min_chars = 2,
            },
            -- Optional, configure key mappings. These are the defaults. If you don't want to set any keymappings this
            -- way then set 'mappings = {}'.
            mappings = {
                -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
                ["gf"] = {
                    action = function()
                        return require("obsidian").util.gf_passthrough()
                    end,
                    opts = { noremap = false, expr = true, buffer = true },
                },
                -- Toggle check-boxes.
                ["<leader>ch"] = {
                    action = function()
                        return require("obsidian").util.toggle_checkbox()
                    end,
                    opts = { buffer = true },
                },
                -- Smart action depending on context, either follow link or toggle checkbox.
                ["<cr>"] = {
                    action = function()
                        return require("obsidian").util.smart_action()
                    end,
                    opts = { buffer = true, expr = true },
                }
            },

            -- Where to put new notes. Valid options are
            --  * "current_dir" - put new notes in same directory as the current buffer.
            --  * "notes_subdir" - put new notes in the default notes subdirectory.
            new_notes_location = "notes_subdir",

            daily_notes = {
                -- Optional, if you keep daily notes in a separate directory.
                folder = "notes/dailies",
                -- Optional, if you want to change the date format for the ID of daily notes.
                date_format = "%Y-%m-%d",
                -- Optional, if you want to change the date format of the default alias of daily notes.
                alias_format = "%B %-d, %Y",
                -- Optional, default tags to add to each new daily note created.
                default_tags = { "daily-notes" },
                -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
                template = "daily_note_template.md"
            },

            -- Optional, alternatively you can customize the frontmatter data.
            ---@return table
            note_frontmatter_func = function(note)
                -- Add the title of the note as an alias.
                if note.title then
                    note:add_alias(note.title)
                end

                -- Set the default meta data here
                local out = { id = note.id, aliases = note.aliases, tags = note.tags }

                -- `note.metadata` contains any manually added fields in the frontmatter.
                -- So here we just make sure those fields are kept in the frontmatter.
                if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
                    for k, v in pairs(note.metadata) do
                        out[k] = v
                    end
                end

                return out
            end,

            -- Optional, for templates (see below).
            templates = {
                folder = "templates",
                date_format = "%Y-%m-%d",
                time_format = "%H:%M",
                -- A map for custom variables, the key should be the variable and the value a function
                substitutions = {},
            },

            -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
            -- URL it will be ignored but you can customize this behavior here.
            ---@param url string
            follow_url_func = function(url)
                -- Open the URL in the default web browser.
                vim.fn.jobstart({ "open", url }) -- Mac OS
                -- vim.fn.jobstart({"xdg-open", url})  -- linux
                -- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
                -- vim.ui.open(url) -- need Neovim 0.10.0+
            end,

            -- Specify how to handle attachments.
            attachments = {
                -- The default folder to place images in via `:ObsidianPasteImg`.
                -- If this is a relative path it will be interpreted as relative to the vault root.
                -- You can always override this per image by passing a full path to the command instead of just a filename.
                img_folder = "assets/imgs", -- This is the default

                -- Optional, customize the default name or prefix when pasting images via `:ObsidianPasteImg`.
                ---@return string
                img_name_func = function()
                    -- Prefix image names with timestamp.
                    return string.format("%s-", os.time())
                end,

                -- A function that determines the text to insert in the note when pasting an image.
                -- It takes two arguments, the `obsidian.Client` and an `obsidian.Path` to the image file.
                -- This is the default implementation.
                ---@param client obsidian.Client
                ---@param path obsidian.Path the absolute path to the image file
                ---@return string
                img_text_func = function(client, path)
                    path = client:vault_relative_path(path) or path
                    return string.format("![%s](%s)", path.name, path)
                end,
            },
        }
    end
}

-- Create my own custom command to invoke different templates
