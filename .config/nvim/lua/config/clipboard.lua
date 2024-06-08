-- For Copying to windows clipboard when inside nvim
-- https://www.reddit.com/r/neovim/comments/vxdjyb/neovim_in_wsl2_cant_copypaste_tofrom_system/

vim.opt.clipboard = "unnamedplus"

if vim.fn.has('wsl') == 1 then
  vim.api.nvim_create_autocmd(
    'TextYankPost',
    {
      group = vim.api.nvim_create_augroup('Yank', { clear = true }),

      callback = function()
        vim.fn.system('/mnt/c/Windows/System32/clip.exe', vim.fn.getreg('"'))
      end,

    }
  )
end
