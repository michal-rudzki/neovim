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
-- vim.fn.system.Font.guifont = "CaskaydiaCove NFM:h12:Regular"

-- vim.cmd("set verbosefile=~/nvim.log")
-- vim.cmd("set debug")
-- vim.cmd('let $NVIM_LOG_FILE = expand("~/nvim.log")')

require("lazy").setup("plugins")

-- Those modules are not loaded by lazy
require("core.options") -- options for vim
require("core.keymaps") -- key bindings for plugins and general for vim

