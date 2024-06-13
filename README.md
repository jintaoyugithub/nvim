# Install
```
git clone https://github.com/jintaoyugithub/nvim.git
```
Open any file with neovim and run :PlugInstall

## MacOS

Clone the repo to "~/.config/"

## Windows

Clone the repo to "~/AppData/Local/"

# Dependencies

Neovim version should greater than 0.10.0 to make sure some plug-ins can run normally.

* nodejs
* yarn
* nerd font(dont't forget to set the font of your terminal into nerd font)
* vim-plug
* fzf
* ripgrep
* fd
* tree sitter cli
* curl(window specific)
* scoop(window specific)

# Plug-in Requirement

When you try to set up neovim in a new device, you should configure some plug-ins list below:

1. Fzflua: it need ripgrep, fd and fzf, otherwise it won't show up.

2. nvim-dap: you need to download and configure the adapter and language. For cpp, gdb won't work so I use cpp-tools instead.

3. nvim-ide: the version of neovim should be greater than v-0.10 otherwise some lua function won't work. To see more info, go to the repo of nvim-dap and nvim-dap-ui.

4. nerd-font: download the nred font and set the proper font in your terminal.

# Future work

- Port the code to lua

- Kickstart.nvim
