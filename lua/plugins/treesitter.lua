return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "comment",
        "css",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "regex",
        "scss",
        "svelte",
        "typescript",
        "tsx",
        "vue",
        "yaml",
      },
      ignore_install = {
        "haskell",
      },
      highlight = {
        enable = true,
      },
    },
    dependencies = {
      -- https://github.com/windwp/nvim-ts-autotag
      {
        "windwp/nvim-ts-autotag",
        opts = {
          enable_close_on_slash = false, -- disable case: `<div /` become `<div /div>`
          filetypes = {
            "html",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "xml",
          },
        },
      },
    },
  },
}
