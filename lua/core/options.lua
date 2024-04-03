local global = vim.g
local opt = vim.opt

-- nvim-tree options
-- disable netrw ar the very start of the init
-- global.loaded_netrw = 1
-- global.loaded_netrwPlugin = 1
-- global.termguicolors = true

vim.scriptenconding = "utf-8" -- set encoding to utf-8 for scripts
vim.mouse = a
-- Fonts configuration
-- global.guifont = "SauceCodePro NF:h14:Regular"
opt.colorcolumn = '80'

global.coloscheme = "monokai-pro"

-- Font type
-- opt.guifont = { "Arial", "h14" }

-- Editor options
opt.ruler = true -- Show the line and column number of the cursor position, separated by a comma.
opt.clipboard = "unnamedplus" -- uses the clipboard register for all operations except yank.

-- session managment
opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- line number
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- backspace
opt.backspace = "indent,eol,start"

-- cursor line
opt.cursorline = true


