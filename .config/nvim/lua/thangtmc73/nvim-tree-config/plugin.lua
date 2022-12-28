-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        {
          		    key = "<C-e>",
		    action = "whatever",
		    action_cb = function(node)
			    local view = require("nvim-tree.view")
      local api = require("nvim-tree.api")
      if view.is_visible() then
        api.tree.close()
      else
        require("nvim-tree").open_replacing_current_buffer()
        api.tree.open()
      end
		    end,
        }
        -- { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local nt_api = require("nvim-tree.api")
nt_api.tree.toggle()
