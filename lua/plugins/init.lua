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
  },
  {
	  "hrsh7th/nvim-cmp",
	  config = function()
		  return require("config.cmp_config")
  	  end
  },
  {
	  "hrsh7th/cmp-nvim-lsp",
  },
  -- and snippet
  {
  	"williamboman/mason-lspconfig.nvim",
	config = function()
		return require("config.lsp_config")
	end
  },
  {
	"williamboman/mason.nvim",
  },
  -- completion ie snippet
  {
  	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
	"saadparwaiz1/cmp_luasnip",
  },
  --treesitter
 {
	 "nvim-treesitter/nvim-treesitter",
	 config = function()
		 return require("config.treesitter")
	 end
 },
 -- telescope
 {
	 "nvim-telescope/telescope.nvim",
 },
 {
	 "nvim-tree/nvim-tree.lua",
	 config = function()
		 return require("config.nvim_tree")
	 end
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
	 "nvim-lualine/lualine.nvim",
	  dependencies = { 'nvim-tree/nvim-web-devicons' },
	 config = function()
			return require("config.lualine")
	end,
 },
 {
	 "Exafunction/codeium.nvim",
	 dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    	 },
	 config = function()
        	require("codeium").setup({
        	})
    	end
 },
 {
	 "onsails/lspkind.nvim",
 },
 {
 },
}
