return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
    	require("mason-lspconfig").setup({
    		  ensure_installed = { "lua_ls", "ansiblels", "powershell_es", "pyright", "pylsp", "hydra_lsp", "marksman" },
        })
    end
  },
  {
    "neovim/nvim-lspconfig", -- https://github.com/neovim/nvim-lspconfig
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({}) -- language server for lua
      lspconfig.ansiblels.setup({}) -- language server for ansible
      lspconfig.pyright.setup({}) -- language server for python
      lspconfig.pylsp.setup({}) -- language server for pylsp
      lspconfig.powershell_es.setup({}) -- language server for powershell_es
      lspconfig.hydra_lsp.setup({}) -- language server for yaml (hydra_lsp)
      lspconfig.marksman.setup({}) -- language server for markdown

      -- core/keymaps.lua
    end
  },
}
