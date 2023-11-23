-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- ESLint autofix after saving
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*.js", "*.ts", "*.tsx", "*.jsx" },
  callback = function()
    if vim.fn.exists(":EslintFixAll") then
      vim.b.autoformat = false
      vim.cmd("EslintFixAll")
    end
  end,
})
