#!/bin/bash

# Shell script installing language servers...
# OUTPUT-COLORING
red='\e[0;31m'
green='\e[0;32m'
NC='\e[0m' # No Color


echo -e "Installing Language Servers..."

# bash - Installing bash-lsp
npm i -g bash-language-server
if [ $? = 0 ]
then
		echo -e "${green}OK${NC}: bash-langauge-server installed"
else
		echo -e "${red}FAILED${NC}: installation of bash-language-server"
fi


# python - Installing pyright
npm i -g pyright
if [ $? = 0 ]
then
		echo -e "${green}OK${NC}: pyright installed"
else
		echo -e "${red}FAILED${NC}: installation of pyright"
fi


# typescript and tsserver
npm i -g typescript typescript-language-server
if [ $? = 0 ]
then
		echo -e "${green}OK${NC}: typescript & typescript-language-server installed"
else
		echo -e "${red}FAILED${NC}: installation of typescript & typescript-language-server"
fi


# json
npm install -g vscode-json-languageserver
if [ $? = 0 ]
then
		echo -e "${green}OK${NC}: vscode-json-languageserver installed"
else
		echo -e "${red}FAILED${NC}: installation of vscode-json-languageserver"
fi


# css
npm install -g vscode-css-languageserver-bin
if [ $? = 0 ]
then
		echo -e "${green}OK${NC}: vscode-css-languageserver-bin installed"
else
		echo -e "${red}FAILED${NC}: installation of vscode-css-languageserver-bin"
fi


# Vue
npm install -g vls
if [ $? = 0 ]
then
		echo -e "${green}OK${NC}: vue-language-server installed"
else
		echo -e "${red}FAILED${NC}: installation of vue-language-server"
fi
