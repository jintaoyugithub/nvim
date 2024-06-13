" | __ )  __ _ ___(_) ___ 
" |  _ \ / _` / __| |/ __|
" | |_) | (_| \__ \ | (__ 
" |____/ \__,_|___/_|\___|
"                         
"  _  __                                      _             
" | |/ /___ _   _ _ __ ___   __ _ _ __  _ __ (_)_ __   __ _ 
" | ' // _ \ | | | '_ ` _ \ / _` | '_ \| '_ \| | '_ \ / _` |
" | . \  __/ |_| | | | | | | (_| | |_) | |_) | | | | | (_| |
" |_|\_\___|\__, |_| |_| |_|\__,_| .__/| .__/|_|_| |_|\__, |
"           |___/                |_|   |_|            |___/ 
noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l
noremap vv <c-v>
noremap Y "+y
noremap U <c-r>

" save/exit/refresh files
map s <nop>
map W :w<CR>
map Q :q<CR>
map Z :nohlsearch<CR>
map X :x<CR>
map R :w<CR>:source $MYNVIM<CR>
map <leader>q :qa<CR>

" spell check
map <leader>sc :set spell!<CR>
" show possible word you want to spell
noremap <C-x> ea<C-x>
inoremap <C-x> <Esc>ea<C-x>s

" press space twice to jump to the next '<++>' and eidt it
nmap <leader><leader> <Esc>/<++><CR>:nohlsearch<CR>c4l

" call figlet to generate some cool text
map tx:r !figlet

" split windows settings
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>
map <leader>sn :vsp<space>

" move cursor between two windows
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l
" chage the size of the windows
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" New tab settings
map nt :tabe<CR>
map tn :-tabnext<CR>
map tp :+tabnext<CR>

" back to where I used to be
" map bo <C-o>
" map bi <C-i>
		
" vim table mode
" use tm to start/stop using table mode
noremap <leader>tm :TableModeToggle<CR>

" markdown preview
" nnoremap <leader>mp <Plug>MarkdownPreview
" nnoremap <leader>ms <Plug>MarkdownPreview

" markdown keybinds
" autocmd  Filetype markdown  inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
" d for dash line
autocmd  Filetype markdown  inoremap ,d ---<Enter><Enter>
" b for bold
autocmd  Filetype markdown  inoremap ,b **** <++><Esc>F*hi
" s for strikethrough
autocmd  Filetype markdown  inoremap ,s ~~~~ <++><Esc>F~hi
" i for italic
autocmd  Filetype markdown  inoremap ,i ** <++><Esc>F*i
" h for hightlight
autocmd  Filetype markdown  inoremap ,h `` <++><Esc>F`i
" c for code block
autocmd  Filetype markdown  inoremap ,c ```<Enter>```<Enter><++><Esc>2kA
" p for pictures
autocmd  Filetype markdown  inoremap ,p ![(<++> <Esc>F[a
" l for link
autocmd  Filetype markdown  inoremap ,l [(<++> <Esc>F[a
" f for font
" autocmd  Filetype markdown  inoremap ,f <font color='<++>'> <++> </font> <++>
" < for find <++>
autocmd  Filetype markdown  inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd  Filetype markdown  inoremap ,1 #<Space><++><Esc>kA
autocmd  Filetype markdown  inoremap ,2 ##<Space><++><Esc>kA
autocmd  Filetype markdown  inoremap ,3 ###<Space><++><Esc>kA
autocmd  Filetype markdown  inoremap ,4 ####<Space><++><Esc>kA
" for fast math block
autocmd  Filetype markdown  inoremap ,m {% katex %}{% endkatex %} <Esc>F{i
autocmd  Filetype markdown  inoremap ,k <CR>{% katex %}<CR>{% endkatex %} <Esc>F{O

" markdown glow
nnoremap <leader>mp :Glow


" goyo
nmap <leader>gy  :Goyo<CR>
nmap <leader>gys :Goyo!<CR>

" undo tree
nnoremap <F5> :UndotreeToggle<CR>

" nerd tree
noremap tt :NERDTreeToggle<CR> 
noremap <leader>r :NERDTreeRefreshRoot<CR>

" vim buffet
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>

" comment
vmap / gc

" nvim-treesetter-cpp-tools
" cf for create funcs
nmap <leader>cf /class<CR>VG:TSCppDefineClassFunc

" fzf lua
nnoremap <leader>ff :FzfLua files cwd=
