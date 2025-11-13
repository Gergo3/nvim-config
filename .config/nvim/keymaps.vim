"leader
let mapleader = " "

"jump to end of line
map é $

"dap
nnoremap <silent> <leader>b  :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>B  :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>p :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>t :lua require'dapui'.toggle()<CR>

nnoremap <silent> <leader>h   :lua require'dap'.continue()<CR>
nnoremap <silent> <leader>dh  :lua require'dap'.run_last()<CR>
nnoremap <silent> <leader>k   :lua require'dap'.step_over()<CR>
nnoremap <silent> <leader>j   :lua require'dap'.step_into()<CR>
nnoremap <silent> <leader>l   :lua require'dap'.step_out()<CR>

