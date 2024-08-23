"keymaps
map é $

"indentation
set et
set sts=4
set sw=4

"define plugins
call plug#begin()

"treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

call plug#end()

"enable treesitter
lua << EOF
require'nvim-treesitter.configs'.setup{
    --enable syntax-highlighting
    highlight={enable=true}
}
--enable folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
EOF
