return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.rubocop,

        -- null_ls.builtins.diagnostics.erb_lint,
        -- null_ls.builtins.diagnostics.eslint_d, due to the legacy
        null_ls.builtins.diagnostics.rubocop,
      },
    })
  end,
}
