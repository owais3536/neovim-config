local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.autoindent = true
opt.smartindent = true
opt.wrap = true

opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.splitright = true
opt.splitbelow = true

opt.clipboard:append('unnamedplus')
opt.hlsearch = true

opt.updatetime = 50
opt.mouse = ''

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.fileencoding = 'utf-8'
opt.termguicolors = true

opt.backspace = {'start', 'eol', 'indent'}
