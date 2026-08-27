return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>fm",
      function() require("conform").format({ async = true, lsp_fallback = true }) end,
      desc = "Format buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      jsonc = { "prettier" },
      markdown = { "prettier" },
      yaml = { "prettier" },
      lua = { "stylua" },
    },
    format_on_save = {
      timeout_ms = 1500,
      lsp_fallback = true,
    },
    -- prefer the project's own prettier (installed via pnpm) over a global one
    formatters = {
      prettier = {
        prefer_local = "node_modules/.bin",
      },
    },
  },
}
