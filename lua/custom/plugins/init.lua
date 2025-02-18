-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
	  'stevearc/oil.nvim',
	    config = function()
	      local oil = require 'oil'
	      oil.setup()
	      -- Keymap for opening parent directory in oil.nvim
	      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
	    end,
	  ---@module 'oil'
	  ---@type oil.SetupOpts
	  opts = {},
	  -- Optional dependencies
	  dependencies = { { "echasnovski/mini.icons", opts = {} } },
	  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	  lazy = false,
	  
	},
}
