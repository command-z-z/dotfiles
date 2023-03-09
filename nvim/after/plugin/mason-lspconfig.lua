local statue, mason_lspconfig = pcall(require, "mason-lspconfig")
if not statue then
    return
end

mason_lspconfig.setup({
    -- ensure_installed = { "pyright", "clangd", "lua_ls"},
})
