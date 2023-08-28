function FindFileWithRipgrep(args)
    local command = 'rg --hidden -g \'!.git/\' --files | rg -S '..args
    local efm = '%f'

    vim.fn.setqflist({}, ' ', {
        lines = vim.fn.systemlist(command),
        efm = efm
    })

    vim.cmd(':cw')
end

function GrepWithRipgrep(args)
    local command = 'rg -S --no-heading --column -g "!.git/" '..args..' .'
    local efm = '%f:%l:%c:%m'

    vim.fn.setqflist({}, ' ', {
        lines = vim.fn.systemlist(command),
        efm = efm
    })

    vim.cmd(':cw')
end

vim.api.nvim_create_user_command(
'GREP',
"execute 'silent grep! -i -R <args> --exclude-dir=node_modules --exclude-dir=.git .' | copen",
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
"silent execute 'make %' | copen",
{})
