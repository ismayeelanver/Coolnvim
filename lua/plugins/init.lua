return {
	"nvim-lua/plenary.nvim",
	-- While lazy.nvim said to do this then i did it
  {
	  "folke/which-key.nvim",
  },
  { 
	  "folke/neoconf.nvim",
	  cmd = "Neoconf",
  },
  {
	  "folke/neodev.nvim",
  },
  -- lsp config, nvim cmp
  {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
  	end,
	opts = {
		ensure_install = {
			"python", "html",
			"bash", "css",
		},
	},

  },
  {
	  "hrsh7th/cmp-nvim-lsp",
	  opts = {
		  ensure_install = {
			  "pyright"
		  },
	  },
  },
  {
 	  "hrsh7th/cmp-buffer",
  },
  {
	  "hrsh7th/cmp-path",
  },
  {
	  "hrsh7th/nvim-cmp",
  },
  -- mason nvim
  {
  	"williamboman/mason.nvim",
	cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
	opts = {
		ensured_install = {
			"lua-language-server", "pyright",
		},
	},
  },
  --treesitter
 {
	 "nvim-treesitter/nvim-treesitter",
	 opts = {
		 ensure_installed = { 
			 "lua", "vim",
			 "vimdoc", "pymanifest",
			 "python", "bash"
		 },
	 },
 },
 -- telescope
 {
	 "nvim-telescope/telescope.nvim",
 },
 {
	 "nvim-tree/nvim-tree.lua",
	 lazy = false,
	 config = function()
	 	require("nvim-tree").setup({
		})
	end,
 },
 {
	 "catppuccin/nvim",
	 lazy = false,
	 priority = 1000,
	 config = function()
		 vim.cmd('colorscheme catppuccin')
	 end
 },
 {
	 "vim-airline/vim-airline",
	 config = function()
		 vim.cmd('AirlineTheme catppuccin')
	 end
 },
}
