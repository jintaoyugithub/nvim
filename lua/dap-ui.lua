local dap = require('dap')
local dapui = require('dapui')
-- nvim-dap-ui configuration
-- require("dap").setup()
require("dapui").setup()

-- make the dapui function recognizable by the editor
-- require("dapui").open()
-- require("dapui").close()
-- require("dapui").toggle()

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

-- Key mappings
vim.api.nvim_set_keymap('n', '<F5>', ":lua require'dap'.continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F10>', ":lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F11>', ":lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F12>', ":lua require'dap'.step_out()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>b', ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>B', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<Leader>lp', ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dr', ":lua require'dap'.repl.open()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dl', ":lua require'dap'.run_last()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>du', ":lua require'dapui'.toggle()<CR>", { noremap = true, silent = true })
-- this is a current solution to close th dap ui windows and close the debug session
vim.api.nvim_set_keymap('n', '<Leader>dc', ":NERDTreeToggle<CR>:lua require'dap'.disconnect()<CR>:lua require'dapui'.close()<CR>:lua require'dap'.close()<CR>:NERDTreeToggle<CR><C-w>l", { noremap = true, silent = true })


