return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                     ]],
			[[                                                     ]],
			[[                                                     ]],
			[[                                                     ]],
			[[                                  _____              ]],
			[[  _____  _______ _______   ___   ____(_)______ ___   ]],
			[[  __  / / /  __ `/_  __ \  __ | / /_  /__  __ `__ \  ]],
			[[  _  /_/ // /_/ /_  / / /____ |/ /_  / _  / / / / /  ]],
			[[  _\__, / \__,_/ /_/ /_/_(_)____/ /_/  /_/ /_/ /_/   ]],
			[[  /____/                                             ]],
			[[                                                     ]],
			[[                                                     ]],
			[[                                                     ]],
			[[                                                     ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
			dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
			dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
		}

		--     use 'wbthomason/packer.nvim'
		--   use {
		--     'goolord/alpha-nvim', branch = 'feature/startify-fortune',
		--   requires = {'BlakeJC94/alpha-nvim-fortune'},
		--     config = function()
		--require("config.alpha")

		--end

		local fortune = require("alpha.fortune")
		dashboard.section.footer.val = fortune()

		alpha.setup(dashboard.opts)
	end,
}
