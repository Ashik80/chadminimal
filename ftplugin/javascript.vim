setlocal tabstop=2
setlocal shiftwidth=2
setlocal colorcolumn=101
setlocal formatoptions+=t
setlocal textwidth=100

nmap <leader>fe :EslintFixAll<CR>
nmap <leader>con :norm aconsole.log();F)
nmap <leader>sta :norm aconst [] = useState();F]
nmap <leader>red :norm aconst [state, dispatch] = useReducer();F)
nmap <leader>ctx :norm aconst {} = useContext();F)
