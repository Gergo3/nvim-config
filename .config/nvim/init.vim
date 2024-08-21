"keymaps
map é $

"define plugins
call plug#begin()

"treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

call plug#end()

"enable syntax highlighting
lua require'nvim-treesitter.configs'.setup{highlight={enable=true}}
