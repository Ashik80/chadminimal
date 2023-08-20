vim.o.textwidth = 79

function SetPyrightCompiler()
    vim.g.current_compiler = 'pyright'
    vim.cmd('compiler pyright')
end

function SetPycodestyleCompiler()
    vim.g.current_compiler = 'pycodestyle'
    vim.cmd('compiler pycodestyle')
end

function ToggleCompiler()
    if vim.g.current_compiler == 'pyright' then
        SetPycodestyleCompiler()
        print('Compiler set to pycodestyle')
    else
        SetPyrightCompiler()
        print('Compiler set to pyright')
    end
end

vim.api.nvim_create_autocmd({'BufEnter'}, {
    pattern = {'*'},
    command = "call v:lua.SetPyrightCompiler()"
})

vim.keymap.set('n', '<leader>b', ':BuildCurrentFile<CR>')
vim.keymap.set('n', '<leader>cc', ':call v:lua.ToggleCompiler()<CR>')

vim.lsp.start({
    name = 'pylsp',
    cmd = {'pylsp'},
    single_file_support = true
})

vim.lsp.start({
    name = 'pyright',
    cmd = {'pyright-langserver', '--stdio'},
    filetypes = {'python'},
    root_dir = vim.fs.dirname(vim.fs.find({
        'setup.py',
        'pyproject.toml',
        'requirements.txt',
        'pyrightconfig.json'
    }, { upward = true })[1]),
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            }
        }
    },
    single_file_support = true
})
