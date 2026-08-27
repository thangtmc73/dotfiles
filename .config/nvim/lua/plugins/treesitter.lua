-- tree-sitter parser names to install
local parsers = {
  "javascript",
  "typescript",
  "tsx",
  "json",
  "html",
  "css",
  "lua",
  "vim",
  "vimdoc",
  "markdown",
  "bash",
}

-- corresponding vim filetypes to attach highlighting/indent to
-- (parser name and filetype name diverge for tsx/jsonc/vimdoc/bash)
local filetypes = {
  "javascript",
  "typescript",
  "typescriptreact",
  "json",
  "jsonc",
  "html",
  "css",
  "lua",
  "vim",
  "help",
  "markdown",
  "sh",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install(parsers)
      -- jsonc (jsonc.json, tsconfig.json, ...) reuses the json parser
      vim.treesitter.language.register("json", "jsonc")

      vim.api.nvim_create_autocmd("FileType", {
        pattern = filetypes,
        callback = function()
          vim.treesitter.start()
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    opts = {},
  },
}
