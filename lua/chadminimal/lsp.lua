vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<leader>sc', StopActiveClients, opts)
    end,
})

vim.cmd('hi clear SignColumn')

function StopActiveClients()
    local active_clients = vim.lsp.get_active_clients()

    for _, value in pairs(active_clients) do
        vim.lsp.stop_client(value.id)
    end
end
