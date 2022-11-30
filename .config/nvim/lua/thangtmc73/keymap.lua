local keymap = vim.keymap

-- NvmTree
keymap.set('n', '<C-l>s', ':NvimTreeToggle<CR>')

-- BufferLine
keymap.set('n', '<C-t><left>', ':BufferLineMovePrev<CR>')
keymap.set('n', '<C-t><right>', ':BufferLineMoveNext<CR>')