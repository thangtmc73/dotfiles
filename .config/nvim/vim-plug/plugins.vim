call plug#begin('~/.config/nvim/plugged')
    " Dracular theme
    Plug 'Mofiqul/dracula.nvim'
    " Icon
    Plug 'nvim-tree/nvim-web-devicons'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'nvim-tree/nvim-tree.lua'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Buffer Line
    Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
call plug#end()
