return {
	"neoclide/coc.nvim",
	branch = "release",
	config = function()
		vim.keymap.set("n", "<leader>f", "<cmd>call CocAction('format')<CR>")
	end
}
