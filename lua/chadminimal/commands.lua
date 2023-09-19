function GrepWithRipgrep(args)
    local command = 'rg -S --no-heading --column -g "!.git/" '..args..' .'
    local efm = '%f:%l:%c:%m'

    vim.fn.setqflist({}, ' ', {
        lines = vim.fn.systemlist(command),
        efm = efm
    })

    vim.cmd(':cw')
end

function FindFileWithRipgrep(args)
    local command = 'rg --hidden -g \'!.git/\' --files | rg -S '..args
    local efm = '%f'

    vim.fn.setqflist({}, ' ', {
        lines = vim.fn.systemlist(command),
        efm = efm
    })

    vim.cmd(':cw')
end

function FzfSearch()
    local tempfile = vim.fn.tempname()
    local cmd = 'rg --hidden -g \'!.git/\' --files | fzf | awk \'{print $1":1:0"}\' > '..tempfile

    os.execute(cmd)
    vim.bo.errorformat = '%f:%l:%c'
    vim.cmd('cfile '..tempfile)
    vim.cmd('redraw!')
    vim.fn.delete(tempfile)
end

vim.api.nvim_create_user_command(
'GREP',
"execute 'silent grep! -i -R <args> --exclude-dir=node_modules --exclude-dir=.git .' | cw",
{ nargs = 1 })

vim.api.nvim_create_user_command(
'FindFile',
"lua FindFileWithRipgrep('<args>')",
{ nargs = 1 })

vim.api.nvim_create_user_command(
'RGREP',
"lua GrepWithRipgrep('<args>')",
{ nargs = 1 })

vim.api.nvim_create_user_command(
'BuildCurrentFile',
"silent execute 'make %' | cw",
{})

vim.api.nvim_create_user_command(
'FuzzyFile',
"lua FzfSearch()",
{})
