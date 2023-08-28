vim.api.nvim_create_user_command(
'GREP',
"execute 'silent grep! -i -R <args> --exclude-dir=node_modules --exclude-dir=.git .' | copen",
{ nargs = 1, force = true }
)

vim.api.nvim_create_user_command(
'BuildCurrentFile',
"silent execute 'make %' | copen",
{})

function GrepWithRipgrep(args)
    local command = 'rg --hidden -g \'!.git/\' --files | rg -i '..args
    local efm = '%f'

    vim.fn.setqflist({}, ' ', {
        lines = vim.fn.systemlist(command),
        efm = efm
    })

    vim.cmd(':cw')
end

vim.api.nvim_create_user_command(
'FindFile',
"lua GrepWithRipgrep('<args>')",
{ nargs = 1, force = true }
)
