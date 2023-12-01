local icons = require("config.icons")
local ui = icons.get("ui")
local kinds = icons.get("kinds")
local git = icons.get("git")

return {
  "nvim-neo-tree/neo-tree.nvim",
  lazy = true,
  cmd = "Neotree",
  opts = {
  	source_selector = {
      winbar = true,
      content_layout = "center",
      sources = {
        { source = "filesystem", display_name = kinds.Class .. " File" },
        { source = "buffers", display_name = ui.Note .. " Bufs" },
        { source = "git_status", display_name = git.Conflict .. " Git" },
        { source = "diagnostics", display_name = ui.Comment .. " Diagnostic" },
      },
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
        },
        never_show = {
          ".DS_Store",
        },
        always_show = {
          ".env",
        },
      },
    },
    window = {
      width = 35,
    },
    nesting_rules = {
      ["js"] = { "js.map" },
    },
  },
}
