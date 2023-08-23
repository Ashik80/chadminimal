-- copy/paste
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')
vim.keymap.set({'n', 'v'}, '<leader>cp', '"+p')
vim.keymap.set('n', '<leader>yf', ':let @f = expand("%:.")<CR>')

-- terminal
vim.keymap.set('n', '<leader>t', ':bel sp | term<CR>')
vim.keymap.set('n', '<leader>vt', ':bel vsp | term<CR>')

-- navigation
vim.keymap.set('n', '<leader>n', ':Ex<CR>')
vim.keymap.set('n', '<leader>fa', ':find ')
vim.keymap.set('n', '<leader>ff', ':FindFile ')
vim.keymap.set('n', '<leader>fb', ':b <tab>')
vim.keymap.set('n', '<leader>fg', ':GREP ')
vim.keymap.set('n', '<leader>ql', ':cclose<CR>')
vim.keymap.set('n', '<leader>qn', ':cnext<CR>')
vim.keymap.set('n', '<leader>qp', ':cprev<CR>')

-- git
vim.keymap.set('n', '<leader>gb', ':!git blame %<CR>')
