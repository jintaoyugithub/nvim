"  __  ____   __  _   ___     _____ __  __ 
" |  \/  \ \ / / | \ | \ \   / /_ _|  \/  |
" | |\/| |\ V /  |  \| |\ \ / / | || |\/| |
" | |  | | | |   | |\  | \ V /  | || |  | |
" |_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|
" 
" execute when open file in vim
exec "nohlsearch"
" and auto install plug in when first time open nvim in a new computer

if has("win64")
	source $HOME\AppData\Local\nvim\general\generalSettings.vim
	source $HOME\AppData\Local\nvim\keysMapping\keysMapping.vim
	source $HOME\AppData\Local\nvim\plug-in\plug-in.vim
	source $HOME\AppData\Local\nvim\plug-in\plug-inSettings.vim
	source $HOME\AppData\Local\nvim\theme\tender.vim
else
	source $HOME/.config/nvim/general/generalSettings.vim
	source $HOME/.config/nvim/keysMapping/keysMapping.vim
	" plug-in and settings
	source $HOME/.config/nvim/plug-in/plug-in.vim
	source $HOME/.config/nvim/plug-in/plug-inSettings.vim
	" theme
	source $HOME/.config/nvim/theme/catppuccin-mocha.vim
	" source $HOME/.config/nvim/theme/xcode.vim
endif
