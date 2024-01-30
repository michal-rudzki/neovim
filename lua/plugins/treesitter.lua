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
      -- ignore_install = { "" },
      ensure_installed = { "c", "lua", "regex", "vim", "bash", "markdown", "markdown_inline", "python" },
      sync_install = false,
      highlight = {
        -- disable = { "c", "lua" },
        enable = true
      },
      indent = { enable = true },
    })

    local compiler = require("nvim-treesitter.install")
    compiler.compilers = { "clang", "gcc" }
  end
}
