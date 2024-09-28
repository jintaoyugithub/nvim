# Nvim Configuration

## Requirements

- Neovim 0.10.0+

## Dependencies

**Note**: You can install all the dependencies here with homebrew!

### fzf

- ripgrep

This is necessary for telescope.nvim to work properly.

### lsp

- lua-language-server

- cmake-language-server

On MacOS, you could download the all the servers with:

```bash
brew install lua-language-server cmake-language-server
```
### obsidian

In order to make obsidian.nvim work, you should create a vault and some sub-dirs to store all the markdown files, the folder structure will be like the following:

- $HOME
    - vaults
        - daily_notes
        - temp-notes
        - template
        - assets
            - imgs
        - weekly_reports (optional)
        - monthly_reports (optional)
        - literature_notes (optional)
        - distrilled_notes (optional)

[pngpaste plugin](https://github.com/jcsalterego/pngpaste) is needed for obsidian to paste images!

