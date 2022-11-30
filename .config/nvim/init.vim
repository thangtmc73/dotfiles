source $HOME/.config/nvim/vim-plug/plugins.vim
colorscheme dracula
set number

for f in split(glob('~/.config/nvim/lua/thangtmc73/*/plugin.lua'), '\n')
  exe 'source' f
endfor