return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  build = ":TSUpdate",
  event = "VeryLazy",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ignore_install = { "c", "lua" },
      ensure_installed = { "regex" },
      sync_install = false,
      highlight = {
        disable = { "c", "lua" },
        -- enable = true
      },
      indent = { enable = true },
    })

    local setting = require("nvim-treesitter.install")
    setting.compilers = { "gcc" }
  end
}
