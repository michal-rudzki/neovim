return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope-file-browser.nvim", -- https://github.com/nvim-telescope/telescope-file-browser.nvim
    config = function()
      require("telescope").setup({
        extensions = {
          file_browser = {
            theme = "ivy",
            hijack_netrw = true,
            mappings = {
              ["i"] = {},
              ["n"] = {},
            }
          },
        },
      })
    end,
	},
  {
    "nvim-telescope/telescope-project.nvim",
    config = function()
      require("telescope").load_extension("project")
      require("telescope").setup({
      })
    end,
  },
	{
		"LinArcX/telescope-command-palette.nvim", -- https://github.com/cherya/telescope-command-palette.nvim/tree/master
		config = function()
			require("telescope").setup({
				extensions = {
					command_palette = {
						{
							"File",
							{ "entire selection (C-a)", ':call feedkeys("GVgg")' },
							{ "save current file (C-s)", ":w" },
							{ "save all files (C-A-s)", ":wa" },
							{ "quit (C-q)", ":qa" },
							{
								"file browser (C-i)",
								":lua require'telescope'.extensions.file_browser.file_browser()",
								1,
							},
							{
								"search word (A-w)",
								":lua require('telescope.builtin').live_grep()",
								1,
							},
							{
								"git files (A-f)",
								":lua require('telescope.builtin').git_files()",
								1,
							},
							{
								"files (C-f)",
								":lua require('telescope.builtin').find_files()",
								1,
							},
						},
						{
							"Help",
							{ "tips", ":help tips" },
							{ "cheatsheet", ":help index" },
							{ "tutorial", ":help tutor" },
							{ "summary", ":help summary" },
							{ "quick reference", ":help quickref" },
							{ "search help(F1)", ":lua require('telescope.builtin').help_tags()", 1 },
						},
						{
							"Vim",
							{ "reload vimrc", ":source $MYVIMRC" },
							{ "check health", ":checkhealth" },
							{ "jumps (Alt-j)", ":lua require('telescope.builtin').jumplist()" },
							{ "commands", ":lua require('telescope.builtin').commands()" },
							{ "command history", ":lua require('telescope.builtin').command_history()" },
							{ "registers (A-e)", ":lua require('telescope.builtin').registers()" },
							{ "colorshceme", ":lua require('telescope.builtin').colorscheme()", 1 },
							{ "vim options", ":lua require('telescope.builtin').vim_options()" },
							{ "keymaps", ":lua require('telescope.builtin').keymaps()" },
							{ "buffers", ":Telescope buffers" },
							{ "search history (C-h)", ":lua require('telescope.builtin').search_history()" },
							{ "paste mode", ":set paste!" },
							{ "cursor line", ":set cursorline!" },
							{ "cursor column", ":set cursorcolumn!" },
							{ "spell checker", ":set spell!" },
							{ "relative number", ":set relativenumber!" },
							{ "search highlighting (F12)", ":set hlsearch!" },
						},
					},
				},
			})
      require("telescope").load_extension("command_palette")
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"BurntSushi/ripgrep",
			"sharkdp/fd",
		},
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			-- core/keymaps.lua
			require("telescope").load_extension("ui-select")
		end,
	},
}
