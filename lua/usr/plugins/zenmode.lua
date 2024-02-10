return {
	"folke/zen-mode.nvim",
	opts = {
		window = {
			backdrop = 0.95,
			width = 0.7, -- width of the Zen window
			height = 1, -- height of the Zen window
		},
		plugins = {
			options = {
				enabled = true,
				ruler = false, -- disables the ruler text in the cmd line area
				showcmd = false, -- disables the command in the last line of the screen
				laststatus = 0, -- turn off the statusline in zen mode
			},
			twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
			gitsigns = { enabled = false }, -- disables git signs
			tmux = { enabled = false }, -- disables the tmux statusline
			kitty = {
				enabled = false,
				font = "+4", -- font size increment
			},
			alacritty = {
				enabled = false,
				font = "14", -- font size
			},
			wezterm = {
				enabled = false,
				font = "+4", -- (10% increase per step)
			},
		},
		on_open = function(win) end,
		on_close = function() end,
	},
	config = function(_, opts)
		local zenMode = require("zen-mode")
		zenMode.setup(opts)

		vim.keymap.set("n", "<leader>tz", function()
			zenMode.toggle()
		end, { silent = true })
	end,
}
