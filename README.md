## Install Lua Langauge Server

# Install the latest Neovim

````
cd ~
sudo rm -r neovim
git clone https://github.com/neovim/neovim
cd neovim
sudo make CMAKE_BUILD_TYPE=Release install
cd ~
sudo rm -r neovim
````


## sumneko ls
checkout - 1.19.1 - issue for master opened.

1. Install `Ninja`

	sudo apt install ninja-build

2. Clone Lua Language Server Repo

	cd .config/nvim
	git clone https://github.com/sumneko/lua-language-server
	cd lua-language-server
	git submodule update --init --recursive

3 Build language Lua Server

	cd 3rd/luamake
	ninja -f ninja/linux.ninja
	cd ../..
	./3rd/luamake/luamake rebuild


TODO:
- galaxyline
- checkout sumneko response to open issue
- nvim startify
- whichkey
- blame

## Language Servers
neovim-lspconfig


