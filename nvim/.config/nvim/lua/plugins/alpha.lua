return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
      [[                                                                          ]],
      [[                                                                          ]],
      [[                                                                          ]],
      [[                                                                          ]],
      [[                                                                          ]],
      [[                        ▄▄▄▄▄▄███▄▄▄▄▄                                    ]],
      [[                    ▄███████▀▀▀▀▀▀█▓▓▓▓▓▓██▄▄▄▄                           ]],
      [[                   ▐████▄▄    ■▓▓▓▓▀▀▀▀▀▀▀▀▀█████■                ██▄     ]],
      [[                    ▀█████████▄▄▄▄▄███████████▀▀             ▄▄  ████░▄▄▄ ]],
      [[    ▐██▄            ▄▄▄▄▄▄▀▀▀▀▀▀▀▀▓▓▓▀░░░▄▄▄   ▄▄          ▐███▏▐██▓▄████ ]],
      [[ ▄█▓░███▓ ▄▓▓▓▄▄████████████▄█████▄ ▄█████████▐███         ████▏██▀████▀  ]],
      [[ ▐███▄███░▀████████▀▀   ▀▓█████▓▀██▓████▀▀  ███████      ▄█████ ■ ██▀     ]],
      [[  ▀████▓██ ▐██████       ▐████   ▐████▀    ▒████████▄  ▄███████           ]],
      [[    ▀███    ▀▀█████▄    ▄████   ▄████▏    ▄█████▀█████████▀ ███           ]],
      [[               ▀████▄ ▄████▐██▄███████▄▄▄███▓██▏ ▀██████▀   ▐██           ]],
      [[                ▀████████▀  ▀████▀▀████████▀▐██▏  ▀██▀▀     ▐██▏          ]],
      [[          ▓▓█    ▀████ ▀            ■███▄▄  ███              ██▏          ]],
      [[          ▀▀▀      ▀▀                ▀█████▄▓▀               ██▏          ]],
      [[            ░░     ▄████████████▄▄▄▄▄▄▄ ▀▀▀████▄▄   ▒▒       ██▏  ▄▄      ]],
      [[                   ▀▀████▀▀▀▀▀▀████████████▄▄▓▓▓███▄     ░░  ▐█▏ ■▀▀      ]],
      [[                                      ▀▀▀▀▀▀█████▓▓▓▓█▄▄     ▐█           ]],
      [[                                                ▄█████████▄▄              ]],
      [[                                       ▄▄▄▄████████▀▀▀▀▀▀▀███▏            ]],
      [[                                   ▄▄█████▀▀▀▀              ▀■            ]],
      [[                                ▄███▀▀▀▀                                  ]],
      [[                              ■▀▀                                         ]],
      [[                                                                          ]],
      [[                                                                          ]],
      [[                                                                          ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
			dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
			dashboard.button("q", "x  > Quit NVIM", ":qa<CR>"),
		}

		dashboard.section.footer = {
			type = "text",
			val = function()
				local count = #require("lazy").plugins()
				return {
					"",
					("Loaded %d plugins    Happy hacking!"):format(count),
					"",
				}
			end,
			opts = { hl = "Comment", position = "center" },
		}

		dashboard.opts.layout = {
			dashboard.section.header,
			dashboard.section.buttons,
			dashboard.section.footer,
		}

		alpha.setup(dashboard.opts)
		vim.cmd([[
      autocmd FileType alpha setlocal nofoldenable
    ]])
	end,
}
