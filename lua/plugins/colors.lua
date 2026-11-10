local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
end
return {
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    config = function()
      require("black-metal").setup({
        theme = "bathory",    -- Selects the Bathory variant
        variant = "dark",     -- Options: 'dark' or 'light'
        alt_bg = false,       -- Set true for an alternate, lighter background
      })
      
      -- Load the colorscheme
      vim.cmd.colorscheme("bathory")
      enable_transparency()
    end
  },
  {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = 'bathory',
    }
  }
}

