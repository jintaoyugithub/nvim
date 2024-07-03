-- set up the leader key
vim.g.mapleader = " "

-- Key mappings
vim.api.nvim_set_keymap('n', 'J', '5j', { noremap = true })
vim.api.nvim_set_keymap('n', 'K', '5k', { noremap = true })
vim.api.nvim_set_keymap('n', 'H', '5h', { noremap = true })
vim.api.nvim_set_keymap('n', 'L', '5l', { noremap = true })
vim.api.nvim_set_keymap('n', 'vv', '<c-v>', { noremap = true })
vim.api.nvim_set_keymap('n', 'Y', '"+y', { noremap = true })

-- Save/exit/refresh files
vim.api.nvim_set_keymap('n', 's', '<nop>', {})
vim.api.nvim_set_keymap('n', 'W', ':w<CR>', {})
vim.api.nvim_set_keymap('n', 'Q', ':q<CR>', {})
vim.api.nvim_set_keymap('n', 'Z', ':nohlsearch<CR>', {})
vim.api.nvim_set_keymap('n', 'X', ':x<CR>', {})
vim.api.nvim_set_keymap('n', 'R', ':w<CR>:source $MYVIMRC<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>q', ':qa<CR>', {})

-- Spell check
-- vim.api.nvim_set_keymap('n', '<leader>sc', ':set spell!<CR>', {})
vim.api.nvim_set_keymap('n', '<C-x>', 'ea<C-x>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-x>', '<Esc>ea<C-x>s', { noremap = true })

-- Split windows settings
vim.api.nvim_set_keymap('n', 'sh', ':set nosplitright<CR>:vsplit<CR>', {})
vim.api.nvim_set_keymap('n', 'sl', ':set splitright<CR>:vsplit<CR>', {})
vim.api.nvim_set_keymap('n', 'sj', ':set splitbelow<CR>:split<CR>', {})
vim.api.nvim_set_keymap('n', 'sk', ':set nosplitbelow<CR>:split<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>sn', ':vsp<space>', {})

-- Move cursor between windows
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', {})
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', {})
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', {})
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', {})

-- New tab settings
vim.api.nvim_set_keymap('n', 'nt', ':tabe<CR>', {})
vim.api.nvim_set_keymap('n', 'tn', ':-tabnext<CR>', {})
vim.api.nvim_set_keymap('n', 'tp', ':+tabnext<CR>', {})

-- Toggle Table Mode
vim.api.nvim_set_keymap('n', '<leader>tm', ':TableModeToggle<CR>', { noremap = true })

-- Markdown preview with Glow
vim.api.nvim_set_keymap('n', '<leader>mp', ':Glow<CR>', { noremap = true })

-- Comment
vim.api.nvim_set_keymap('v', '/', 'gc', {})

-- Markdown settings
vim.api.nvim_command('autocmd FileType markdown inoremap ,d ---<Enter><Enter>')
vim.api.nvim_command('autocmd FileType markdown inoremap ,b **** <++><Esc>F*hi')
vim.api.nvim_command('autocmd FileType markdown inoremap ,s ~~~~ <++><Esc>F~hi')
vim.api.nvim_command('autocmd FileType markdown inoremap ,i ** <++><Esc>F*i')
vim.api.nvim_command('autocmd FileType markdown inoremap ,h `` <++><Esc>F`i')
vim.api.nvim_command('autocmd FileType markdown inoremap ,c ```<Enter>```<Enter><++><Esc>2kA')
vim.api.nvim_command('autocmd FileType markdown inoremap ,p ![(<++> <Esc>F[a')
vim.api.nvim_command('autocmd FileType markdown inoremap ,l [(<++> <Esc>F[a')
vim.api.nvim_command('autocmd FileType markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l')
vim.api.nvim_command('autocmd FileType markdown inoremap ,1 #<Space><++><Esc>kA')
vim.api.nvim_command('autocmd FileType markdown inoremap ,2 ##<Space><++><Esc>kA')
vim.api.nvim_command('autocmd FileType markdown inoremap ,3 ###<Space><++><Esc>kA')
vim.api.nvim_command('autocmd FileType markdown inoremap ,4 ####<Space><++><Esc>kA')
vim.api.nvim_command('autocmd FileType markdown inoremap ,m {% katex %}{% endkatex %} <Esc>F{i')
vim.api.nvim_command('autocmd FileType markdown inoremap ,k <CR>{% katex %}<CR>{% endkatex %} <Esc>F{O')

-- lsp key mapping --
-- 跳转到声明
vim.api.nvim_set_keymap('n', '<leader>gD', ':lua vim.lsp.buf.declaration()<CR>', {})
-- 跳转到定义
vim.api.nvim_set_keymap('n', '<leader>gd', ':lua vim.lsp.buf.definition()<CR>', {})
-- 查看文档
vim.api.nvim_set_keymap('n', '<leader>gh', ':lua vim.lsp.buf.hover()<CR>', {})
-- 跳转到实现
vim.api.nvim_set_keymap('n', '<leader>gi', ':lua vim.lsp.buf.implementation()<CR>', {})
-- 签名帮助
vim.api.nvim_set_keymap('n', '<leader>gs', ':lua vim.lsp.buf.signature_help()<CR>', {})
-- 跳转到引用
vim.api.nvim_set_keymap('n', '<leader>gr', ':lua vim.lsp.buf.references()<CR>', {})
-- 跳转到类型
vim.api.nvim_set_keymap('n', '<Leader>gt', ':lua vim.lsp.buf.type_definition()<CR>', {})
