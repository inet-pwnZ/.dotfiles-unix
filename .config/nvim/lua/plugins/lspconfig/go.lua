local lspconfig = require("lspconfig")
local lsp = require("plugins.lspconfig")

lspconfig.gopls.setup {
    on_attach = function(client, bufnr)
        lsp:on_attach(client, bufnr)
    end
}
