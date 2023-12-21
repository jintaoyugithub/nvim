" ======
" Basic Settings
" ======
let mapleader=" "
syntax on
set number 
set relativenumber
set wrap
set showcmd
set wildmenu
set mouse=a

" search setting
set hlsearch
set incsearch
set ignorecase
set smartcase
noremap n nzz
noremap N Nzz

" tab setting  
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set nu
set ruler
set hlsearch
set backspace=indent,eol,start
set foldmethod=manual
set scrolloff=10

" clipboard setting
set clipboard+=unnamedplus


" Encoding settings
set encoding=utf-8
set guifont=<FONT_NAME>:h<FONT_SIZE>

" cursor setting
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" indentLine settings 
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进
set conceallevel=0

" set gui font
set guifont=DroidSansMono_Nerd_Font:h11

