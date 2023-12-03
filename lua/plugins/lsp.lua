-- https://www.lazyvim.org/plugins/lsp#nvim-lspconfig

vim.lsp.set_log_level(vim.log.levels.ERROR)

local vscode = require("util.vscode")

vim.g.autoformat = vscode.get_setting("editor.formatOnSave")

return {
  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    event = { "VeryLazy" },
    opts = {
      diagnostics = {
        virtual_text = {
          source = false,
        },
      },
      servers = {},
    },
  },

  -- lspsaga
  {
    "nvimdev/lspsaga.nvim",
    lazy = true,
    event = { "LspAttach" },
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
  },

  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    opts = {
      log_level = vim.log.levels.ERROR,
      ensure_installed = {
        "bash-language-server",
        "cspell",
        "css-lsp",
        "cssmodules-language-server",
        "emmet-language-server",
        "eslint-lsp",
        "html-lsp",
        "json-lsp",
        "markdownlint",
        "mdx-analyzer",
        "prettier",
        "stylua",
        "tailwindcss-language-server",
        "terraform-ls",
        -- "typescript-language-server",
        "vtsls",
        "vue-language-server",
        "yaml-language-server",
        "yamlfmt",
      },
    },
  },

  -- TCS command
  {
    "dmmulroy/tsc.nvim",
    cmd = { "TSC" },
    opts = {},
  },
}
