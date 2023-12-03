return {
	{
		"hrsh7th/nvim-cmp",
		lazy = true,
		event = { "InsertEnter" },
		opts = function(_, opts)
			opts.completion.keyword_length = 1
			opts.formatting.fields = { "kind", "abbr", "menu" }
			opts.formatting.format = function(_, item)
				local icons = require("lazyvim.config").icons.kinds
				if icons[item.kind] then
					item.kind = icons[item.kind]
				end
				return item
			end
		end,
	},
}
