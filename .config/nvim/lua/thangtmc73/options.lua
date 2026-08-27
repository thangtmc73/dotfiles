local opt = vim.opt

vim.g.mapleader = " "

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true

opt.ignorecase = true
opt.smartcase = true

opt.wrap = false
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 8
opt.termguicolors = true
opt.splitright = true
opt.splitbelow = true

opt.updatetime = 250
opt.timeoutlen = 400

opt.undofile = true
opt.swapfile = false
opt.backup = false

-- pnpm workspaces use nested package.json; let LSP root detection walk up to workspace root
vim.g.markdown_fenced_languages = { "ts=typescript", "tsx=typescriptreact" }
