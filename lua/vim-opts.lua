-- vim options
local opt = vim.opt
local tabsize = 4

opt.expandtab = true
opt.shiftwidth = tabsize
opt.tabstop = tabsize
opt.softtabstop = tabsize

opt.relativenumber = true
opt.number = true

opt.scrolloff = 10

opt.incsearch = true
opt.hlsearch = true

opt.signcolumn = 'yes'
opt.cursorline = true

opt.splitbelow = true
opt.splitright = true

opt.wrap = false

opt.clipboard = "unnamedplus"

opt.virtualedit = "block"

opt.ignorecase = true

opt.termguicolors = true

opt.backup = false

opt.swapfile = false
