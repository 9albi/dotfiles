-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here



-- Movement
local keyset = vim.keymap.set
keyset("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })
keyset("t", "jk", "<cmd>close<cr>", { noremap = true, silent = true, desc = "<ESC>" })


-- paste over currently selected text without yanking it
keyset("v", "p", '"_dp')
keyset("v", "P", '"_dP')

-- keyset({ 'n', 'x', 'o' }, 'H', '^')
-- keyset({ 'n', 'x', 'o' }, 'L', '$')

keyset({ "v", "n" }, "d", '"_d')
keyset({ "v", "n" }, "D", '"_D')


keyset({ "n", "v", "x", "i" }, "<Caps>", "<ESC>")

-- https://www.reddit.com/r/neovim/comments/rztkaq/how_do_you_jump_out_pairs_or_quotes_in_insert/
function EscapePair()
  local closers = { ")", "]", "}", ">", "'", '"', "`", "," }
  local line = vim.api.nvim_get_current_line()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local after = line:sub(col + 1, -1)
  local closer_col = #after + 1
  local closer_i = nil
  for i, closer in ipairs(closers) do
    local cur_index, _ = after:find(closer)
    if cur_index and (cur_index < closer_col) then
      closer_col = cur_index
      closer_i = i
    end
  end
  if closer_i then
    vim.api.nvim_win_set_cursor(0, { row, col + closer_col })
  else
    vim.api.nvim_win_set_cursor(0, { row, col + 1 })
  end
end

vim.api.nvim_set_keymap('i', '<C-l>', '<cmd>lua EscapePair()<CR>', { noremap = true, silent = true })

keyset('n', '<space>xe', '<cmd>lua vim.diagnostic.open_float()<CR>', {})
