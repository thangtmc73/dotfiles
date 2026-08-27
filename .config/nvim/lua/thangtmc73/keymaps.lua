local keymap = vim.keymap.set

keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap("n", "<C-f><left>", ":BufferLineMovePrev<CR>")
keymap("n", "<C-f><right>", ":BufferLineMoveNext<CR>")
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>")
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>")

keymap("n", "<leader>ff", function() require("telescope.builtin").find_files() end, { desc = "Find files" })
keymap("n", "<leader>fg", function() require("telescope.builtin").live_grep() end, { desc = "Live grep" })
keymap("n", "<leader>fb", function() require("telescope.builtin").buffers() end, { desc = "Buffers" })
keymap("n", "<leader>fh", function() require("telescope.builtin").help_tags() end, { desc = "Help tags" })

keymap("n", "<leader>e", vim.diagnostic.open_float, { desc = "Line diagnostics" })
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
