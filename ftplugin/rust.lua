if vim.fn.executable('rust-analyzer') == 1 then
    vim.lsp.start({
        name = 'rust_analyzer',
        cmd = {'rust-analyzer'},
        root_dir = vim.fs.dirname(vim.fs.find({
            'Cargo.toml',
            'rust-project.json'
        }, { upward = true })[1])
    })
end
