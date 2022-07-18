if vim.fn.has("termguicolors") == 1 then
  vim.go.t_8f = "[[38;2;%lu;%lu;%lum"
  vim.go.t_8b = "[[48;2;%lu;%lu;%lum"
  vim.opt.termguicolors = true
end
require('onedark').setup {
  style = 'darker',
  toggle_style_key = '<leader>tt',
}
require('onedark').load()

vim.cmd 'highlight Normal ctermbg=NONE'
