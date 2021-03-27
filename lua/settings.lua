-- Important Defaults
vim.o.errorbells=false                        -- Disable soundeffects
vim.cmd('syntax on')                          -- Syntax on
vim.o.termguicolors = true                    -- set term giu colors most terminals support this
vim.o.pumheight = 10                          -- Makes popup menu smaller
vim.o.cmdheight = 2                           -- More space for displaying messages
vim.o.hidden = true                           -- Required to keep multiple buffers open multiple buffers
vim.o.swapfile = false                        -- No swap file
vim.o.scrolloff = 16                          -- Move up and down when reaching + - 16 lines of code
vim.o.fileencoding = "utf-8"                  -- The encoding written to file
vim.o.t_Co = "256"                            -- Support 256 colors
vim.o.mouse = "a"                             -- Enable your mouse

-- Tab and Indent and Words
vim.o.conceallevel = 0                        -- Do not hide characters for example in markdown
vim.wo.wrap = false                           -- Display long lines as just one line
vim.o.showtabline = 2                         -- Always show tabs
vim.o.tabstop = 4                             -- Insert 4 spaces for a tab
vim.o.softtabstop = 4                         -- Insert 4 spaces for a tab
vim.bo.smartindent = true                     -- Makes indenting smart
vim.bo.autoindent = true                      -- Copy indent from current line
vim.bo.expandtab = true                       -- Converts tabs to spaces
vim.cmd('set iskeyword+=-')                   -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c')                   -- Don't pass messages to |ins-completion-menu|.

-- Line Numbers, Cursor and Window
vim.o.splitbelow = true                       -- Horizontal splits will automatically be below
vim.o.splitright = true                       -- Vertical splits will automatically be to the right
vim.wo.number = true                          -- Set numbered lines
vim.wo.relativenumber = true                  -- Set relative line numbers
vim.wo.cursorline = true                      -- Enable highlighting of the current line
vim.wo.signcolumn = "yes:2"                   -- Always show the signcolumn, otherwise it would shift the text each time
vim.cmd('set colorcolumn=100')                -- Colorcolumn

vim.o.guifont = "JetBrainsMono\\ Nerd\\ Font\\ Mono:h18"
