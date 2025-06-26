return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
        defaults = {
          file_ignore_patterns = {
            "node_modules",
            "%.git/",
            "venv/",
            "__pycache__/",
          },
          vimgrep_arguments = {
            'rg',
            '--line-number',
            '--hidden',
            '--glob=!.git/',
            '--glob=!.node_modules/',
            '--glob=!.venv/',
            '--glob=!.__pycache__/',
          }
        },
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
        pickers = {
          find_files = {
            hidden = true,
          }
        }
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
