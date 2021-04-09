-- Signs for Diagnostics
vim.fn.sign_define("LspDiagnosticsSignError", {
		texthl = "LspDiagnosticsSignError",
		text = "",
		numhl = "LspDiagnosticsSignError"
})

vim.fn.sign_define("LspDiagnosticsSignWarning", {
		texthl = "LspDiagnosticsSignWarning",
		text = "",
		numhl = "LspDiagnosticsSignWarning"
})

vim.fn.sign_define("LspDiagnosticsSignHint", {
		texthl = "LspDiagnosticsSignHint",
		text = "",
		numhl = "LspDiagnosticsSignHint"
})

vim.fn.sign_define("LspDiagnosticsSignInformation", {
		texthl = "LspDiagnosticsSignInformation",
		text = "",
		numhl = "LspDiagnosticsSignInformation"
})


-- config defaults
-- -----------------------------------------------------------------
local nvim_lsp = require('lspconfig')
local on_attach = function(client)

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=#5e81ac
      hi LspReferenceText cterm=bold ctermbg=red guibg=#5e81ac
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=#5e81ac

      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

-- Use a loop to conveniently both setup defined servers
-- and map buffer local keybindings when the language server attaches
local servers = { "pyright", "rust_analyzer", "tsserver" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach }
end
