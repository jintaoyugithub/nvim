"  ____  _                  ___         ____       _   _   _                 
" |  _ \| |_   _  __ _     |_ _|_ __   / ___|  ___| |_| |_(_)_ __   __ _ ___ 
" | |_) | | | | |/ _` |_____| || '_ \  \___ \ / _ \ __| __| | '_ \ / _` / __|
" |  __/| | |_| | (_| |_____| || | | |  ___) |  __/ |_| |_| | | | | (_| \__ \
" |_|   |_|\__,_|\__, |    |___|_| |_| |____/ \___|\__|\__|_|_| |_|\__, |___/
"                |___/                                             |___/     

" ======
" airline settings
" ======
" enable smater table line
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'
" let g:airline_powerline_fonts = 1

" ======
" vim current word
" ======
" enable/disable the plug-in
let g:vim_current_word#enabled = 0
" Twins of word under cursor:
let g:vim_current_word#highlight_twins = 1
" The word under cursor:
let g:vim_current_word#highlight_current_word = 1
" these two lines should be placed below the line of colorscheme setting
" change the highlight style of current word
hi CurrentWord guifg=#ffe4e1 guibg=#b4d7ff gui=bold,italic
" change the highlight style of twins of current word
hi CurrentWordTwins guifg=#ffe4e1  guibg=#d9c5f2

" ======
" vim commentary
" ======
" if want to support comment in specific files
" autocmd FileType apache setlocal commentstring=#\ %s


" ======
" vim-devicons
" ======
" need to install nerd font compatible font first
" and need to load specific font in your terminal, like alacritty

" ======
" vim-table-mode
" ======
" use || to enable/disable table mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

" ======
" vim-table-mode
" ======
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ======
" vim easy motion
" ======
nmap T <Plug>(easymotion-overwin-f2)
nmap <leader>/ <Plug>(easymotion-bd-w)

" ======
" vim startify
" ======
let g:startify_bookmarks = [
	\ {'q': '~/.zshrc'},
	\ {'w': '~/.config/nvim/init.vim'}]

let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ ]

" ======
" Coc.nvim Settings
" ======
let g:coc_global_extensions = [
		\ 'coc-json',
		\ 'coc-vimlsp',
		\ 'coc-marketplace',
		\ 'coc-clangd']
 
set hidden
set updatetime=100
set shortmess+=c
" use tab to complete the key word
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>" 
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" use ~ to tirgger completion
inoremap <silent><expr> ` coc#refresh()
" go to next/pre error 
nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>= <Plug>(coc-diagnostic-next)
" go to code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ======
" nerd tree
" ======
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
let g:NERDTreeFileLines = 0
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeShowLineNumbers = 0 
let g:NERDTreeHidden = 1    
" Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" ======
" vim buffet
" ======
let g:buffet_powerline_separators = 1
let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"
" colors
" Note: Make sure the function is defined before `vim-buffet` is loaded.
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#00FF00 guifg=#000000
  hi! BuffetBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#00FF00 guifg=#000000
endfunction

" ======
" nvim-treesitter(lua)
" ======
lua require('treesitter-config')

" ======
" nvim-dap(lua)
" ======
lua require('dap-config')

" ======
" nvim-dap-ui(lua)
" ======
lua require('dap-ui')

" ======
" nvim-dap-virtual-text(lua)
" ======
lua require('dap-virtual-text-config')
