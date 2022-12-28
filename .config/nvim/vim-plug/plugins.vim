call plug#begin('~/.config/nvim/plugged')

    " Dracular theme
    Plug 'Mofiqul/dracula.nvim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'nvim-tree/nvim-tree.lua'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " nvim treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'windwp/nvim-ts-autotag'
    " Auto tag
    Plug 'alvan/vim-closetag'
    " buffer line
    Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
    " telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " Auto complete
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    " icon
    Plug 'nvim-tree/nvim-web-devicons'
    " statusline
    Plug 'nvim-lualine/lualine.nvim'
    " git utils
    Plug 'APZelos/blamer.nvim'
call plug#end()
