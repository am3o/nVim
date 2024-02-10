return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>tlg", "<cmd>LazyGit<cr>", { silent = true })
	end,
}
