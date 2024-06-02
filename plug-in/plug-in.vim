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
" theme and layout
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
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'jacoborus/tender.vim'
Plug 'navarasu/onedark.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'stevearc/dressing.nvim'
Plug 'ldelossa/nvim-ide'
Plug 'rcarriga/nvim-notify'
Plug 'MunifTanjim/nui.nvim'
Plug 'folke/noice.nvim'

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
" Plug 'MattesGroeger/vim-bookmarks'
Plug 'jiangmiao/auto-pairs'
Plug 'm4xshen/hardtime.nvim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

" ======
" files finding
" ======
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
" optional for icon support
Plug 'nvim-tree/nvim-web-devicons'
" Plug 'nvim-telescope/telescope.nvim'
Plug 'otavioschwanck/arrow.nvim'


" ======
" Languages and server
" ======
Plug 'OmniSharp/omnisharp-vim'
" highlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'Badhi/nvim-treesitter-cpp-tools' "depend on nvim-treesitter
Plug 'nvim-lua/plenary.nvim'
Plug 'Civitasv/cmake-tools.nvim' " depend on plenary
Plug 'williamboman/mason.nvim'
Plug 'jay-babu/mason-nvim-dap.nvim'



" ======
" debuger
" ======
Plug 'mfussenegger/nvim-dap'
Plug 'nvim-neotest/nvim-nio'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'

" ======
" unreal engine
" ======
Plug 'zadirion/Unreal.nvim'
Plug 'tpope/vim-dispatch'


call plug#end()
