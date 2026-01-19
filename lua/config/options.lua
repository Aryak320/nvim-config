-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LaTeX conceal settings
vim.opt.conceallevel = 2
vim.opt.concealcursor = "nc"
vim.g.lazyvim_prettier_needs_config = false
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Conceal", { fg = "#ff5555" }) -- choose your color
  end,
})
