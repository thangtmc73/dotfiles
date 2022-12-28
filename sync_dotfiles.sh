# this script is used for syncing resources from local into the git repository directory
cd .config
cwd=$(pwd)
cd ~/.config
ls -a
IndexedConfigs=(nvim kitty)
for config in "${IndexedConfigs[@]}"; do cp -r "$config" "$cwd"; done;
