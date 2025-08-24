require("hyprviel.keymaps")
require("hyprviel.lazy")

vim.opt.number = true
vim.opt.relativenumber = true

-- indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

vim.cmd([[
    syntax on
    set termguicolors
    colorscheme catppuccin-mocha
]])
