source ~/.config/nvim/keymaps.vim
source ~/.config/nvim/dap.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/statuscol.vim
source ~/.config/nvim/indentation.vim
lua dofile(vim.fn.stdpath("config") .. "/autopairs.lua")
lua dofile(vim.fn.stdpath("config") .. "/completion.lua")
lua dofile(vim.fn.stdpath("config") .. "/dap-ui.lua")
lua dofile(vim.fn.stdpath("config") .. "/lsp.lua")

" Directory containing extra configs
let etc_dir = expand('~/.config/nvim/etc')

" Load all .vim files
for f in split(glob(etc_dir . '/*.vim'), '\n')
    execute 'source ' . f
endfor

" Load all .lua files
for f in split(glob(etc_dir . '/*.lua'), '\n')
    execute 'lua dofile("' . f . '")'
endfor


lua dofile(vim.fn.stdpath("config") .. "/treesitter.lua")
