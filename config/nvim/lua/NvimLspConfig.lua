local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
    return
end

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
    return
end

local capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.bashls.setup{
    capabilities = capabilities,
}

lspconfig.clangd.setup{
    capabilities = capabilities,
}

lspconfig.gopls.setup{
    capabilities = capabilities,
}

lspconfig.pylsp.setup{
    capabilities = capabilities,
}
