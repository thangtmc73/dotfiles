return {
  "greggh/claude-code.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "ClaudeCode",
  keys = {
    { "<leader>ac", "<cmd>ClaudeCode<CR>", desc = "Toggle Claude Code" },
  },
  opts = {},
}
