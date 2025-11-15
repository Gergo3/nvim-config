local lang_dir = vim.fn.stdpath("config") .. "/ts-langs"
local files = vim.fn.readdir(lang_dir)

local langs = {}

for _, filename in ipairs(files) do
  local path = lang_dir .. "/" .. filename
  local lines = vim.fn.readfile(path)

  for _, line in ipairs(lines) do
    local lang = vim.trim(line)
    if lang ~= "" then
      table.insert(langs, lang)
    end
  end
end

require'nvim-treesitter.configs'.setup{

    --languages to install treesitter for
    ensure_installed = langs,


    --enable syntax-highlighting
    highlight={enable=true}

}



