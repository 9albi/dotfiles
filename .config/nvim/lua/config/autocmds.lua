-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

if vim.fn.has('wsl') == 1 then
  vim.api.nvim_create_autocmd(
    'TextYankPost',
    {
      group = vim.api.nvim_create_augroup('Yank', { clear = true }),

      callback = function()
        vim.fn.system('/mnt/c/Windows/System32/clip.exe', vim.fn.getreg('0'))
      end,
    }
  )
end
