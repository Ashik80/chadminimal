vim.cmd('runtime! ftplugin/javascript.lua')

vim.keymap.set('n', '<leader>rfc', ':-1read $HOME/.config/nvim/snippets/react-fc.jsx<CR>5j$a')
vim.keymap.set('n', '<leader>rafc', ':-1read $HOME/.config/nvim/snippets/react-afc.jsx<CR>5j$a')

vim.keymap.set('n', '<leader>div', ':norm a<div></div>F<')
vim.keymap.set('n', '<leader>p', ':norm a<p></p>F<')
vim.keymap.set('n', '<leader>span', ':norm a<span></span>F<')
vim.keymap.set('n', '<leader>dia', ':norm a<dialogue></dialogue>F<')
vim.keymap.set('n', '<leader>ah', ':norm a<a href=""></a>F<')
vim.keymap.set('n', '<leader>but', ':norm a<button type=""></button>F<')
vim.keymap.set('n', '<leader>h1', ':norm a<h1></h1>F<')
vim.keymap.set('n', '<leader>img', ':norm a<img src="" alt="" />3F"')
