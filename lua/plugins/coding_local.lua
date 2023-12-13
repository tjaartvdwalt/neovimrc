return {
	--{ "tpope/vim-commentary" },
	-- { "github/copilot.vim" },
	-- {
	--   "ojroques/nvim-buildme",
	--   -- opts = {
	--   --     buildfile = ".buildme.sh", -- the build file to execute
	--   --     interpreter = "bash", -- the interpreter to use (bash, python, ...)
	--   --     force = "--force", -- the option to pass when the bang is used
	--   --     wincmd = "",
	--   -- },
	-- },

	-- {
	--   'ldelossa/gh.nvim',
	--   dependencies = { 'ldelossa/litee.nvim' }
	-- },
	{ "rbong/vim-flog",
		keys = {
			{ "<leader>gL", ":Flog<cr>", desc = "Show git log in a new tab" },
			{ "<leader>gl", ":Flogsplit<cr>", desc = "Show git log in a split window" },
		},
	},
	{
		"rest-nvim/rest.nvim",
		dependencies = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("rest-nvim").setup({
				--- Get the same options from Packer setup
			})
		end,
		keys = {
			{ "<leader>ch", "<Plug>RestNvim", desc = "Run the request under the cursor" },
		},
	},
	-- {'neomake/neomake'}
}
