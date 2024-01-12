local global = vim.g
local opt = vim.opt


vim.scriptenconding = "utf-8" -- set encoding to utf-8 for scripts
vim.mouse = a
-- Fonts configuration
-- global.guifont = SauceCodePro NF:h14:Regular

global.coloscheme = "catppucin"
--
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
vim.wo.colorcolumn = '80'

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

