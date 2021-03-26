## Install Lua Langauge Server

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



