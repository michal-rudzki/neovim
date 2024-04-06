return {
	{
		"williamboman/mason.nvim", -- https://github.com/williamboman/mason.nvim
		lazy = false,
		config = function()
			require("mason").setup({
        PATH = "prepend",
        log_level = vim.log.levels.INFO,
      })
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
	},
	{
		"neovim/nvim-lspconfig", -- https://github.com/neovim/nvim-lspconfig
    lazy = false,
    -- log_level = vim.lsp.set_log_level("debug")
		config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
        capabilities = capabilities
      }) -- language server for lua

			lspconfig.ansiblels.setup({
        capabilities = capabilities
      }) -- language server for ansible

			lspconfig.powershell_es.setup({
        capabilities = capabilities
      }) -- language server for powershell_es

			lspconfig.pyright.setup({
        capabilities = capabilities
      }) -- language server for python

			lspconfig.pylsp.setup({
        capabilities = capabilities
      }) -- language server for pylsp

			lspconfig.hydra_lsp.setup({
        capabilities = capabilities
      }) -- language server for yaml (hydra_lsp)

			lspconfig.marksman.setup({
        capabilities = capabilities
      }) -- language server for markdown

      lspconfig.julials.setup({
        capabilities = capabilities
      }) -- language server for julia

      lspconfig.yamlls.setup({
        capabilities = capabilities
      }) -- language server for YAML

			-- core/keymaps.lua
		end,
	},
}
