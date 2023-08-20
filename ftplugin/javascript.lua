vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.colorcolumn = "101"

vim.api.nvim_create_user_command('EslintFix',
"silent execute '!eslint_d --fix %' | e",
{})

vim.cmd('compiler eslinter')

vim.keymap.set('n', '<leader>fe', ':EslintFix<CR>')
vim.keymap.set('n', '<leader>b', ':BuildCurrentFile<CR>')

vim.keymap.set('n', '<leader>con', ':norm aconsole.log();F)')
vim.keymap.set('n', '<leader>sta', ':norm aconst [] = useState();F]')
vim.keymap.set('n', '<leader>red', ':norm aconst [state, dispatch] = useReducer();F)')
vim.keymap.set('n', '<leader>ctx', ':norm aconst {} = useContext();F)')

vim.lsp.start({
    name = 'tsserver',
    cmd = {'typescript-language-server', '--stdio'},
    root_dir = vim.fs.dirname(vim.fs.find({
        "package.json",
        "tsconfig.json",
        "jsconfig.json",
        ".git"
    }, { upward = true })[1]),
    single_file_support = true
})

vim.lsp.start({
    name = 'eslint',
    cmd = {'vscode-eslint-language-server', '--stdio'},
    root_dir = vim.fs.dirname(vim.fs.find({
        '.eslintrc',
        '.eslintrc.js',
        '.eslintrc.json',
        'eslint.config.js'
    }, { upward = true })[1]),
    settings = {
        validate = 'on',
        experimental = {
            useFlatConfig = false,
        },
        rulesCustomizations = {},
        run = 'onType',
        problems = {
            shortenToSingleLine = false,
        },
        nodePath = '',
    },
})
