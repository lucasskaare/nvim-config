return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "github/copilot.vim",
    event = {"InsertEnter", "VeryLazy"},
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("toggleterm").setup({
        size = function(term)
          if term.direction == "horizontal" then
            return vim.o.lines
          elseif term.direction == "vertical" then
            return vim.o.columns
          end
        end,
        open_mapping = [[<C-j>]],
        direction = "float",
        float_opts = {
          border = "none",
          width = function() return vim.o.columns end,
          height = function() return vim.o.lines end,
        },
        start_in_insert = true
      })
    end,
  }

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
