return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        "ts_ls", -- TypeScript / JavaScript
        "tailwindcss", -- Tailwind CSS classnames, hover, sorting hints
        "cssls",
        "html",
        "eslint",
        "jsonls",
        "lua_ls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      -- modern vim.lsp.config/vim.lsp.enable API (nvim 0.11+); mason-lspconfig
      -- auto-enables every server listed in its ensure_installed above.
      vim.lsp.config("*", {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })

      -- tailwindcss: classname completion + hover preview for .ts/.tsx/.html
      vim.lsp.config("tailwindcss", {
        filetypes = { "html", "css", "typescript", "typescriptreact", "javascript", "javascriptreact" },
      })
      -- ts_ls / eslint / cssls / html / jsonls / lua_ls: defaults are fine.
      -- ts_ls resolves the workspace root from package.json / tsconfig.json,
      -- which works unmodified for pnpm workspaces. eslint stays diagnostics-only;
      -- actual formatting is owned by conform/prettier (see conform.lua).

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local map = function(mode, lhs, rhs, desc)
            vim.keymap.set(mode, lhs, rhs, { buffer = args.buf, desc = desc })
          end
          map("n", "gd", vim.lsp.buf.definition, "Go to definition")
          map("n", "gr", vim.lsp.buf.references, "Go to references")
          map("n", "K", vim.lsp.buf.hover, "Hover docs")
          map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
          map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
        end,
      })
    end,
  },
}
