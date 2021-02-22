" Nvim configuration

" Enviorement Variables
let $RTP=split(&runtimepath, ',')[0]    " set variable for runtime path
let $RC="$HOME/.config/nvim/init.vim"   " set variiable to start editing init.vim

" Default, colorscheme, background, layout
set noerrorbells			    " block the damn errorbells from annoying you
set termguicolors               " enables 24-bit RGB colors
set cmdheight=2                 " Number of screen lines to use for the command-line. 
set hidden                      " Allow switching without full written out buffer
set noswapfile                  " Turn off swap files
syntax enable                   " syntax highlighting
colorscheme molokai             " installation ~/.config/nvim/colors/molokai.vim
highlight Normal guibg=none
filetype plugin indent on       " indent and autodetection for filetype (custom)
set backspace=indent,eol,start  " allow to use backspace


" Line Numbers, Cursor and Window
set nu						    " set current line numbers
set relativenumber			    " set the relative line number to the current cursor position
set guicursor=				    " block cursor
set signcolumn=yes              " sets a sign column on the left of the window
set colorcolumn=80              " colorcolumn is a comma separated list of screen columns that arehighlighted with ColorColumn 


" Tabs, indent, scrolling
set tabstop=4 softtabstop=4	    " tabstop to four and softtabstop to 4 ensure 8 where necessary
set shiftwidth=4			    " the indentation width 
set expandtab				    " prevent \t, tabs will be expanded into spaces
set smartindent				    " smart autoindenting when starting a new line
set nowrap                      " prevents line wrapping
set scrolloff=8                 " begins scrolling down 8 lines before cursor hits end of screen:w

" Highlighting, search
set incsearch                   " highlights while pattern is typed
set ignorecase                  " If the 'ignorecase' option is on, the case of normal letters is ignored.
set smartcase                   " Override the 'ignorecase' option if the search pattern contains upper	case characters. 
set hlsearch                    " highlights searched pattern
set nohlsearch                  " stops highlighting for the hlsearch option
" :noh - remove highlight
" This unsets the last search pattern register by hitting return"
nnoremap <CR> :noh<CR><CR>


" Plugins
" the path for the plugins has to match the location where nvim gets the
" configuration
call plug#begin('~/.nvim/plugged')
" Language Server
Plug 'neovim/nvim-lspconfig'    " Install language server for example lua.
Plug 'nvim-lua/completion-nvim' " Auto completion framework for neovims's built-in LSP

" coc for IntelliSense



" Fuzzy Finder
Plug 'nvim-lua/popup.nvim'      " An implementation of the Popup API from vim in Neovim.
Plug 'nvim-lua/plenary.nvim'    " Luafunctions which you do not want to write twice
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

" Setup nvim-telescope fuzzy fidner word search over project
" execute: hold space and press shortkeys
let mapleader = " " 
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>ff :lua require('telescope.builtin').find_files({ search = vim.fn.input("Grep For File > ")})<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" System Dependencies
" sharkdp/bat
" sharkdp/fd
" BurntSushi/ripgrep
" nvim-tresssitter/nvim-treesitter
" neovim LSP
" devicons
