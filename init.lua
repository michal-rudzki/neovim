local opts = {}
local global = vim.g
local vim = vim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- Map <leader>
global.mapleader = " "
global.mallocalleader = " "

-- Font
font_sie = 14
font_family = "SauceCodePro Nerd Font" 
-- bold_font	 
-- bold_italic_font 

-- vim.cmd("set verbosefile=~/nvim.log")
-- vim.cmd("set debug")
-- vim.cmd('let $NVIM_LOG_FILE = expand("~/nvim.log")')

require("lazy").setup("plugins")

-- Those modules are not loaded by lazy
require("core.options") -- options for vim
require("core.keymaps") -- key bindings for plugins and general for vim

