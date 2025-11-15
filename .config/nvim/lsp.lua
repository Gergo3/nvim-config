local lsp_path = vim.fn.stdpath("config") .. "/lsp"

for _, file in ipairs(vim.fn.glob(lsp_path .. "/*.lua", true, true)) do
  dofile(file)
end

