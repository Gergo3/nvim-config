require("nvim-autopairs").setup
{
    check_ts = true, -- enable treesitter integration
}

--[[

_G.MPairsCR = function()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local line = vim.api.nvim_get_current_line()
  local prev = line:sub(col, col)
  local next = line:sub(col + 1, col + 1)

  if prev == "{" and next == "}" and line:sub(1, col - 1):match("%)%s*$") then
    local indent = line:match("^(%s*)") or ""

    vim.schedule(function()
      local cur_row = vim.api.nvim_win_get_cursor(0)[1]

      -- Replace line with Allman-style block
      vim.api.nvim_buf_set_lines(0, cur_row - 1, cur_row, false, {
        line:sub(1, col - 1),
        indent .. "{",
        indent .. "    ",
        indent .. "}",
      })

      -- Defer cursor move slightly to allow line insertion to complete
      vim.defer_fn(function()
        vim.api.nvim_win_set_cursor(0, {cur_row + 1, #indent + 4})
      end, 0)
    end)
    return ""
  end

  return require("nvim-autopairs").autopairs_cr()
end

vim.api.nvim_set_keymap("i", "<CR>", "v:lua.MPairsCR()", { expr = true, noremap = true })

]]
