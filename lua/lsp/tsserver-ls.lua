require'lspconfig'.tsserver.setup {
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    -- This makes sure tsserver is not used for formatting (I prefer prettier)
    settings = {documentFormatting = false}
}
