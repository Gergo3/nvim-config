source ~/.config/nvim/keymaps.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/statuscol.vim
source ~/.config/nvim/indentation.vim
lua dofile(vim.fn.stdpath("config") .. "/autopairs.lua")
lua dofile(vim.fn.stdpath("config") .. "/completion.lua")
lua dofile(vim.fn.stdpath("config") .. "/dap-ui.lua")
lua dofile(vim.fn.stdpath("config") .. "/lsp.lua")


lua dofile(vim.fn.stdpath("config") .. "/treesitter.lua")
