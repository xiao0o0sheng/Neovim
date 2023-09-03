return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require('gitsigns').setup({
				signs = {
					add          = { hl = 'GitSignsAdd', text = '▎', numhl = 'GitSignsAddNr', linehl = 'GitSignsAddLn' },
					change       = { hl = 'GitSignsChange', text = '░', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
					delete       = { hl = 'GitSignsDelete', text = '_', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
					topdelete    = { hl = 'GitSignsDelete', text = '▔', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
					changedelete = { hl = 'GitSignsChange', text = '▒', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
					untracked    = { hl = 'GitSignsAdd', text = '┆', numhl = 'GitSignsAddNr', linehl = 'GitSignsAddLn' },
				},
			})
			vim.keymap.set("n", "<leader>g-", ":Gitsigns prev_hunk<CR>", { noremap = true, silent = true })					-- <leader>g-	移动到 上一个 变更块
			vim.keymap.set("n", "<leader>g=", ":Gitsigns next_hunk<CR>", { noremap = true, silent = true })					-- <leader>g=	移动到 下一个 变更块
			vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", { noremap = true, silent = true })				-- <leader>gb	在当前行显示所属的 Git 作者和提交信息
			vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", { noremap = true, silent = true })				-- <leader>gr	重置当前变更块（hunk）的修改，撤销未提交的修改
			vim.keymap.set("n", "M", ":Gitsigns preview_hunk_inline<CR>", { noremap = true, silent = true })				-- M			在当前光标所在的行，预览显示该行变更的详细信息
		end
	},
	{
		"kdheepak/lazygit.nvim",		-- =======================================>>>>>>>>>  需要安装lazygit	https://github.com/jesseduffield/lazygit
		keys = { "<c-g>" },
		config = function()
			vim.g.lazygit_floating_window_scaling_factor = 1.0
			vim.g.lazygit_floating_window_winblend = 0
			vim.g.lazygit_use_neovim_remote = true
			vim.keymap.set("n", "<c-g>", ":LazyGit<CR>", { noremap = true, silent = true })								-- <c-g>	启用LazyGit
		end
	},
	-- {
	-- 	"APZelos/blamer.nvim",
	-- 	config = function()
	-- 		vim.g.blamer_enabled = true
	-- 		vim.g.blamer_relative_time = true
	-- 	end
	-- }
}
