return { 
	"catppuccin/nvim", 
	lazy = false,
	name = "catppuccin",
	prioriry = 1000,
	config = function()
		vim.cmd.colorscheme "catppuccin"
	end
}