vim.cmd('runtime! ftplugin/javascript.lua')

vim.api.nvim_create_user_command(
'GetErrorsFromFile',
'silent cgetfile | cw',
{}
)

function SetTsCompiler()
    vim.g.current_compiler = 'tsscript'
    vim.cmd('compiler tsscript')
    vim.keymap.set('n', '<leader>b', ':GetErrorsFromFile<CR>')
end

function SetEslintCompiler()
    vim.g.current_compiler = 'eslinter'
    vim.cmd('compiler eslinter')
    vim.keymap.set('n', '<leader>b', ':BuildCurrentFile<CR>')
end

function ToggleCompiler()
    if vim.g.current_compiler == 'eslinter' then
        SetTsCompiler()
        print('Compiler set to tsscript')
    else
        SetEslintCompiler()
        print('Compiler set to eslinter')
    end
end

vim.api.nvim_create_autocmd({'BufEnter'}, {
    pattern = {'*'},
    callback = SetEslintCompiler
})

vim.keymap.set('n', '<leader>cc', ':call ToggleCompiler()<CR>')

