"  ____  _                  ___       
" |  _ \| |_   _  __ _     |_ _|_ __  
" | |_) | | | | |/ _` |_____| || '_ \ 
" |  __/| | |_| | (_| |_____| || | | |
" |_|   |_|\__,_|\__, |    |___|_| |_|
"                |___/                

" Plug-in settings
set nocompatible
filetype on
filetype indent on 
filetype plugin on
filetype plugin indent on

" ======
" plug-in list
" ======
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'dense-analysis/ale' 错误提示
" Plug 'preservim/tagbar'
" Plug 'mbbill/undotree' " get error in window, something about
" undotreePersistUndo
Plug 'junegunn/goyo.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bagrat/vim-buffet'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'

" ======
" theme
" ======
"Plug 'projekt0n/github-nvim-theme'
"Plug 'Shatur/neovim-ayu'
"Plug 'hzchirs/vim-material'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'rktjmp/lush.nvim'
Plug 'rockyzhang24/arctic.nvim'
Plug 'liuchengxu/space-vim-theme'
Plug 'vim-airline/vim-airline-themes'
" fancy start screen of neovim
Plug 'arzg/vim-colors-xcode'
Plug 'mhinz/vim-startify'

" ======
" markdown
" ======
" if have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
" if don't have nodejs and yarn
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'} "works fine in mac but laggy in windows

" ======
" general writing
" ======
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'dominikduda/vim_current_word'
Plug 'tpope/vim-commentary'
Plug 'dhruvasagar/vim-table-mode'
" Plug 'SirVer/ultisnips'
Plug 'Yggdroot/indentLine'
" always put vim-devicons at last
Plug 'ryanoasis/vim-devicons'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'jiangmiao/auto-pairs'

" ======
" programming languages
" ======
Plug 'OmniSharp/omnisharp-vim'

call plug#end()
