local opt = vim.opt

vim.g.mapleader = " "

opt.termguicolors = true
opt.showmode = false
opt.clipboard = "unnamedplus"
opt.mouse = "a"
opt.title = true
opt.exrc = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.shiftround = true

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.splitright = true
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.smoothscroll = true

opt.updatetime = 250
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = vim.fn.stdpath("state") .. "/undo"

opt.completeopt = { "menuone", "noselect", "noinsert" }
