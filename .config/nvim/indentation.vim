set et
set sts=4
set sw=4

"indentation guides
lua require("ibl").setup()

lua << EOF
--enable folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
EOF
