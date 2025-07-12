return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local gruvbox_bg = "#282828"
		local gruvbox_fg = "#ebdbb2"
		local gruvbox_dimmed = "#a89984"
		local gruvbox_yellow = "#fabd2f"

		vim.api.nvim_set_hl(0, "LualineBufferActive", { fg = gruvbox_bg, bg = gruvbox_yellow, bold = true })
		vim.api.nvim_set_hl(0, "LualineBufferInactive", { fg = gruvbox_dimmed, bg = gruvbox_bg })

		require("lualine").setup({
			options = {
				theme = "gruvbox_dark",
				globalstatus = true,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},

			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },

				lualine_c = {
					{
						"buffers",
						mode = 0,
						show_filename_only = true,
						hide_filename_extension = false,
						max_length = vim.o.columns * 2 / 3,
						use_mode_colors = false,
						buffers_color = {
							active = "LualineBufferActive",
							inactive = "LualineBufferInactive",
						},
						symbols = {
							modified = " ●",
							alternate_file = "󰌹",
							directory = "",
						},
						separator = { left = "", right = "" },
						padding = 1,
					},
				},

				lualine_x = {"encoding", "fileformat", "filetype"},
				lualine_y = {"progress"},
				lualine_z = {"location"},
			},

			inactive_sections = {},
			tabline = {},
			winbar = {},
		})
	end,
}
