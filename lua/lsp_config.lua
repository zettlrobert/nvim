-- Add completin-nvim package(Installed with Plugin Manager)

vim.cmd [[ packadd nlua.nvim ]]

-- Local variables to avoid verbose code
local lsp = require('lspconfig')            -- Langauge Server Protocol
local completion = require('completion')    -- Autocompletion framework for built in LSP


-- Helper function to bind new mappings
-- This function enables to map the key to the result only in the current buffer we are working on.
-- The mode as the name says specify in which mode this key mapping will be enabled.
-- Mappings with this function will override the precedent key mappings with the same key.
local mapper = function(mode, key, result)
    vim.api.nvim_buf_set_keymap(0, mode, key, "<cmd>lua "..result.."
<cr>", {noremap = true, silent = true})
end

-- Attach function, all things the LSP client should do in a new buffer will be added here.
-- Check completion-nvim github to check other capabilities
-- Putting LSP specific mappings in this function enables them only when the LSP is working - not in other buffers.
local custom_attach = function()
    completion.on_attach()
    -- Move cursor to the next and previous diagnostic
    mapper('n', '<leader>dn', 'vim.lsp.diagnostic.goto_next()')
    mapper('n', '<leader>dp', 'vim.lsp.diagnostic.goto_prev()')
end

-- LSP Config
-- nvim-lspconfig readme - CONFIG.md lists all configuration the plugin provides



