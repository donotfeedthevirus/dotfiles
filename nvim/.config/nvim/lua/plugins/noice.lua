return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-lualine/lualine.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup()
		require("notify").setup({ background_colour = "#000000" })
	end,
}
