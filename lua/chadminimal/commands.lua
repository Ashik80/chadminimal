vim.api.nvim_create_user_command(
    'GREP',
    'grep -i -R <args> --exclude-dir=node_modules --exclude-dir=.git .',
    { nargs = 1, force = true }
)
