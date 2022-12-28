require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "tsx", "java", "go", "gomod", "json" },
  sync_install = false,
  autotag = {
    enable = true,
  }
}