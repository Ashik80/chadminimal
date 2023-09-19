local lspconfig = require("lspconfig")
-- local capabilities = require('cmp_nvim_lsp').default_capabilities(
--   vim.lsp.protocol.make_client_capabilities()
-- )
-- 
-- capabilities.textDocument.completion.completionItem.snippetSupport = false

local servers = {
        "tsserver",
        "pyright",
        "eslint",
        "pylsp",
        "rust_analyzer",
        "lua_ls",
        "clangd"
    }

for _, server in ipairs(servers) do
    lspconfig[server].setup {}
end

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[g', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']g', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    end,
})
