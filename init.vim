""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nvim configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enviorement Variables & Path
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let $RTP=split(&runtimepath, ',')[0]        " set variable for runtime path
let $RC="$HOME/.config/nvim/init.vim"       " set variiable to start editing init.vim
set path=.,**                               " set path to current file and current
                                            " dir with all of it's children


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default, colorscheme, background, layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noerrorbells                " block the damn errorbells from annoying you
set termguicolors               " enables 24-bit RGB colors
set cmdheight=2                 " screen lines to use for the command-line.
set hidden                      " Allow switching without full written out buffer
set noswapfile                  " Turn off swap files
set scrolloff=15                " show at least x lines above/below the cursor
set showtabline=2               " Always show the tabline 
syntax enable                   " syntax highlighting
colorscheme molokai             " installation ~/.config/nvim/colors/molokai.vim
highlight Normal guibg=none     
                                " transparent bg
filetype plugin indent on       " indent and autodetection for filetype (custom)
set backspace=indent,eol,start  " allow to use backspace

" hi Conceal         ctermfg=7 ctermbg=242 guifg=Grey guibg=rgba(0,0,0,0.8)

" lightline configuration
let g:lightline = {
      \ 'colorscheme': 'molokai',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Line Numbers, Cursor and Window
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu                        " current line number
set relativenumber            " relative line number to the current  position
set guicursor=                " block cursor
set signcolumn=yes            " a sign column on the left of the window
set colorcolumn=80            " colorcolumn is a comma separated list of screen columns,
                              " that arehighlighted with ColorColumn
set splitright                " vsp opens window to the right of current window.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs, indent, scrolling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4 softtabstop=4  " tabstop to four
                             " softtabstop to 4
                             " ensure 8 where necessary
set shiftwidth=4             " the indentation width
set expandtab                " prevent \t, tabs will be expanded into spaces
set autoindent               " copy indent from current line when starting new line
set smartindent              " smart autoindenting when starting a new line
set nowrap                   " prevents line wrapping
set scrolloff=8              " begins scrolling down 8 lines
                             " before cursor hits end of screen:w


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlighting, search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch                 " highlights while pattern is typed
set ignorecase                " If the 'ignorecase' option is on,
                              " the case of normal letters is ignored.
set smartcase                 " Override the 'ignorecase' option,
                              " if search pattern contains upper case characters.
set hlsearch                  " highlights searched pattern
set nohlsearch                " stops highlighting for the hlsearch option
                              " :noh - remove highlight
                              " This unsets the last search pattern register 
nnoremap <CR> :noh<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" the path for the plugins has to match the plugin location
call plug#begin('~/.config/nvim/plugins')

" Language Server
Plug 'neovim/nvim-lspconfig'        " Install language server for example lua.
Plug 'nvim-lua/completion-nvim'     " Auto completion framework for built-in LSP

" coc for autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Manage coc extensions with coc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extension Dependencies on System
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" - eslint
" - eslint-plugin-vue

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extensions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
            \'coc-prettier',
            \'coc-git',
            \'coc-tsserver',
            \'coc-json',
            \'coc-vetur',
            \'coc-markdownlint'
            \]


"""""""""""""""""""""""""""""""""""""""""""""""
" Fuzzy Finder
"""""""""""""""""""""""""""""""""""""""""""""""
Plug 'nvim-lua/popup.nvim'               " An implementation of the Popup API from vim in Neovim.
Plug 'nvim-lua/plenary.nvim'             " Luafunctions which you do not want to write twice
Plug 'nvim-telescope/telescope.nvim'     " Find, Filter, Preview, Pick.


"""""""""""""""""""""""""""""""""""""""""""""""
" Git
"""""""""""""""""""""""""""""""""""""""""""""""
" :G
Plug 'tpope/vim-fugitive'

"""""""""""""""""""""""""""""""""""""""""""""""
" Commentary
"""""""""""""""""""""""""""""""""""""""""""""""
" gcc - comment out line with count
" gc - comment out target motion - gcap comment out paragraph
Plug 'tpope/vim-commentary'

"""""""""""""""""""""""""""""""""""""""""""""""
" Indentation Lines
"""""""""""""""""""""""""""""""""""""""""""""""
" This plugin is used for displaying thin vertical lines at each indentation level
Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'

"""""""""""""""""""""""""""""""""""""""""""""""
" lightline statusbar
"""""""""""""""""""""""""""""""""""""""""""""""
" light and configurable statusline/tablien plugin for vim.
Plug 'itchyny/lightline.vim' 

"""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree - file explorer for vim
"""""""""""""""""""""""""""""""""""""""""""""""
" ALT + F opends nerdtree
Plug 'preservim/nerdtree'

"""""""""""""""""""""""""""""""""""""""""""""""
" All about 'surroundings'
"""""""""""""""""""""""""""""""""""""""""""""""
" cs"' inside \"Hello world" changes it to 'Hello World'
" cs'<q> to change to <q>Hello World</q>
" cst" \"Hello World"
Plug 'tpope/vim-surround'

"""""""""""""""""""""""""""""""""""""""""""""""
" emmet html autocompletion
"""""""""""""""""""""""""""""""""""""""""""""""
" html emmet ctrl + y +,
Plug 'mattn/emmet-vim' 

"""""""""""""""""""""""""""""""""""""""""""""""
" syntax highlighting - polygot is a collection of language packs for vim
"""""""""""""""""""""""""""""""""""""""""""""""
Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"""""""""""""""""""""""""""""""""""""""""""""""
" Color highlighter for Neovim
"""""""""""""""""""""""""""""""""""""""""""""""
Plug 'norcalli/nvim-colorizer.lua'

"""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme and vim-devicons
"""""""""""""""""""""""""""""""""""""""""""""""
Plug 'ryanoasis/vim-devicons'
Plug 'hzchirs/vim-material'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

"""""""""""""""""""""""""""""""""""""""""""""""
" Langauges and Frameworks
"""""""""""""""""""""""""""""""""""""""""""""""
" React
"""""""""""""""""""""""""""""""""""""""""""""""
Plug 'maxmellon/vim-jsx-pretty'          " react highlighting
Plug 'HerringtonDarkholme/yats.vim'      " .tsx (reat with tyepscript)


call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua require'colorizer'.setup()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
}
EOF

" Installed tresssitter with :TSInstall
"""""""""""""""""""""""""""""""""""""""""""""""
" lua
" yaml
" json
" typescript
" javascript
" html
" regex
" vue


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LEADER & Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup nvim-telescope fuzzy fidner word search over project
" execute: hold space and press shortkeys
let mapleader = " "

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use :Prettier to format current buffer
command! -nargs=0 Prettier :CocCommand prettier.formatFile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Telescope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lists Files in current directory
nnoremap <leader>ff :lua require('telescope.builtin').find_files()<cr>
" Searches in current directory files. (respecting .gitignore)
nnoremap <leader>fg :lua require('telescope.builtin').live_grep()<cr>
" Lists open buffers in the- current vim instance.
nnoremap <leader>lb :lua require('telescope.builtin').buffers()<cr>
" Lists Available help tags and open help document
nnoremap <leader>lh :lua require('telescope.builtin').help_tags()<cr>
" Searches for a string under the cursor in current directory
nnoremap <leader>ps :lua require('telescope.builtin').grep_string()<cr>
" Lists available plugin/user commands and run it.
nnoremap <leader>lc :lua require('telescope.builtin').commands()<cr>
" Lists treesitter information
nnoremap <leader>tre :lua require('telescope.builtin').treesitter()<cr>

" Lists vim registers and edit or paste seleciton. - Clipboard has to be set up
" nnoremap <leader>lr :lua require('telescope.builtin').registers()<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keymaps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A is for ALT
nnoremap <A-f> :NERDTreeToggle<cr>

" Moving between windows
nnoremap <C-J> <C-W><C-J>           " Select window down
nnoremap <C-K> <C-W><C-K>           " Select window up
nnoremap <C-L> <C-W><C-L>           " Select window right
nnoremap <C-H> <C-W><C-H>           " Select window left
" Max out height of current split: <C-W> _
" Max out width of current split: <C-W> |
" Normalize all split sizes: <C-W> =
" Swap top/bottom or left/right split: <C-W> R 
" Break out current window into a new tabview: <C-W> T
" Close every window but the current one: <C-W> o


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"function MyTabLine()
"      parent directory %:p:h
"      " file name %:p:t
"      let parentDir = '%:p:h'
"      " return parentDir 
"endfunction



" System Dependencies
" sharkdp/bat
" sharkdp/fd
" BurntSushi/ripgrep
" nvim-treessitter/nvim-treesitter
" neovim LSP
" devicons
