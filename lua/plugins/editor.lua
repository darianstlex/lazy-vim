local skip_features_filetypes = require("util.ft").skip_features_filetypes
local float = require("util.opts").float


return {
	-- multicursors
	{
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      "smoka7/hydra.nvim",
    },
    opts = {},
    cmd = {
      "MCstart",
      "MCvisual",
      "MCclear",
      "MCpattern",
      "MCvisualPattern",
      "MCunderCursor",
    },
  },

	-- multicursors extra
  {
    "mg979/vim-visual-multi",
    lazy = true,
    init = function()
      -- https://github.com/mg979/vim-visual-multi/wiki/Mappings#full-mappings-list
      vim.cmd([[
				let g:VM_default_mappings = 0
				let g:VM_maps = {}
				let g:VM_maps["Find Under"] = ''
				let g:VM_maps["Find Subword Under"] = ''
			]])
    end,
  },

  -- accelerate j/k mappings
  {
    "rainbowhxch/accelerated-jk.nvim",
    lazy = true,
    keys = {
      { "j", "<Plug>(accelerated_jk_gj)" },
      { "k", "<Plug>(accelerated_jk_gk)" },
    },
    opts = {
      mode = "time_driven",
      enable_deceleration = false,
      acceleration_motions = {},
      acceleration_limit = 150,
      acceleration_table = { 7, 12, 17, 21, 24, 26, 28, 30 },
      -- when 'enable_deceleration = true', 'deceleration_table = { {200, 3}, {300, 7}, {450, 11}, {600, 15}, {750, 21}, {900, 9999} }'
      deceleration_table = { { 150, 9999 } },
    },
  },

	-- animate block scopes
  {
    "echasnovski/mini.indentscope",
    lazy = true,
    opts = {
      draw = {
        animation = function()
          return 0
        end,
      },
    },
  },

  -- colorize css
  {
    "NvChad/nvim-colorizer.lua",
    lazy = true,
    ft = {
      "lua",
      "html",
      "vue",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
      "css",
    },
    opts = function(self, opts)
      return vim.tbl_deep_extend("force", opts, {
        filetypes = self.ft,
        user_default_options = {
          RRGGBBAA = true,
          tailwind = true,
        },
      })
    end,
  },

	{
		"cshuaimin/ssr.nvim",
		keys = {
			{
				"<M-f>",
				function()
					require("ssr").open()
				end,
				desc = "Search and replace",
			},
		},
		opts = {
			border = float.border,
			min_width = 50,
			min_height = 5,
			max_width = 120,
			max_height = 25,
			keymaps = {
				close = "q",
				next_match = "n",
				prev_match = "N",
				replace_confirm = "<cr>",
				replace_all = "<leader><cr>",
			},
		},
	},

	{
		"LintaoAmons/easy-commands.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"NeogitOrg/neogit",
		},
	},
}
