return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		config = function()
			require("configs.conform")
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	{ "norcalli/nvim-colorizer.lua", lazy = false },
	{ "folke/noice.nvim", lazy = false },
	{ "xiyaowong/transparent.nvim", lazy = false },
	{ "rcarriga/nvim-notify",
		lazy = false,
		config = function() require("notify").setup({
			 background_colour = "#000000", })
		end
	},
	{ "WhoIsSethDaniel/mason-tool-installer.nvim" },

	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("configs.nvimtree")
		end,
	},
	-- test new blink
	-- { import = "nvchad.blink.lazyspec" },

	-- {
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	opts = {
	-- 		ensure_installed = {
	-- 			"vim", "lua", "vimdoc",
	--      "html", "css"
	-- 		},
	-- 	},
	-- },
}
