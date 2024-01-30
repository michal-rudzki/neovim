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

local opts = {}
local global = vim.g
-- Map <leader>
global.mapleader = " "
global.mallocalleader = " "

-- vim.cmd("set verbosefile=~/nvim.log")
-- vim.cmd("set verbose=15")
-- vim.cmd('let $NVIM_LOG_FILE = expand("~/nvim.log")')

require("lazy").setup("plugins")

-- Those modules are not loaded by lazy
require("core.options") -- options for vim
require("core.keymaps") -- key bindings for plugins and general for vim

