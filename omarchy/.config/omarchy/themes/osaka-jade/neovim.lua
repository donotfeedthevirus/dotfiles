return {
	"olivercederborg/poimandres.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("poimandres").setup()
		vim.cmd.colorscheme("poimandres")
	end,
}
