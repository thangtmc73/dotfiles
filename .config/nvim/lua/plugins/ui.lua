return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "NvimTreeToggle", "NvimTreeFindFile" },
    opts = {},
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {},
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {},
  },
  {
    -- shows color swatches for hex codes AND Tailwind classnames (bg-red-500, text-blue-400, ...)
    "norcalli/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("colorizer").setup({
        "css",
        "html",
        typescript = { tailwind = true },
        typescriptreact = { tailwind = true },
        javascript = { tailwind = true },
        javascriptreact = { tailwind = true },
      })
    end,
  },
}
