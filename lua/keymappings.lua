vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })

vim.g.mapleader = ' '

-- Toggle highlight
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- Manual indenting
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- Move selected block in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv\'', { noremap = true, silent = true })

-- TelescopePrompt
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>lb', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ps', ':Telescope grep_string<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>lc', ':Telescope commands<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>tre', ':Telescope treesitter<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>lr', ':Telescope registers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leade>tmedia', ':Telescope media_files', { noremap = true, silent = true })

-- LSP
vim.cmd('nnoremap <silent>gd <cmd>lua vim.lsp.buf.definition()<CR>')
vim.cmd('nnoremap <silent>gD <cmd>lua vim.lsp.buf.declaration()<CR>')
vim.cmd('nnoremap <silent>gr <cmd>lua vim.lsp.buf.references()<CR>')
vim.cmd('nnoremap <silent>gi <cmd>lua vim.lsp.buf.implementation()<CR>')

-- Lspsaga
vim.api.nvim_set_keymap('n', '<Leader>K', ':Lspsaga hover_doc<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>F', ':Lspsaga lsp_finder<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>R', ':Lspsaga rename<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ca', ':Lspsaga code_action<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>S', ':Lspsaga signature_help<CR>', { noremap = true, silent = true })

