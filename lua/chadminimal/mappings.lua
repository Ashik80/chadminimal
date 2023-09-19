-- copy/paste
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')
vim.keymap.set({'n', 'v'}, '<leader>cp', '"+p')
vim.keymap.set('n', '<leader>yf', ':let @f = expand("%:.")<CR>')

-- terminal
vim.keymap.set('n', '<leader>t', ':bel sp | term<CR>')
vim.keymap.set('n', '<leader>vt', ':bel vsp | term<CR>')
vim.keymap.set('t', '<leader><leader>', '<C-\\><C-n>')

-- navigation
vim.keymap.set('n', '<leader>n', ':Ex<CR>')
vim.keymap.set('n', '<leader>fa', ':e **/*')
vim.keymap.set('n', '<leader>ff', ':FuzzyFile<CR>')
vim.keymap.set('n', '<leader>fb', ':ls<CR>:b<space>')
vim.keymap.set('n', '<leader>fg', ':RGREP<space>')
vim.keymap.set('n', '<leader>ql', ':cclose<CR>')
vim.keymap.set('n', '<leader>qn', ':cnext<CR>')
vim.keymap.set('n', '<leader>qp', ':cprev<CR>')

-- git
vim.keymap.set('n', '<leader>gb', ':!git blame %<CR>')
