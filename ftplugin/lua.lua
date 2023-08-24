if vim.fn.executable('lua-language-server') == 1 then
    vim.lsp.start({
        name = 'lua_ls',
        cmd = {'lua-language-server'},
        root_dir = vim.fs.dirname(vim.fs.find({
            ".git"
        }, { upward = true })[1]),
        single_file_support = true
    })
end
