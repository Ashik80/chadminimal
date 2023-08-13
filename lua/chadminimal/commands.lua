vim.api.nvim_create_user_command(
    'GREP',
    "execute 'silent grep! -i -R <args> --exclude-dir=node_modules --exclude-dir=.git .' | copen",
    { nargs = 1, force = true }
)
