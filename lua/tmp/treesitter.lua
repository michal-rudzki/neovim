return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "c" }, --"c", "cpp", "lua", "vim", "vimdoc", "query", "regex", "yaml", "python" 
      sync_install = false,
      highlight = {
        enable = true
      },
      indent = {
        enable = true
      },
    })
    local install = require("nvim-treesitter.install")
    install.compilers = { "c" }
  end

}
