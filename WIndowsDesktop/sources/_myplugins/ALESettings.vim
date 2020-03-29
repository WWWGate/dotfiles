"Last Modified: Fri Mar 20, 2020  04:39AM

""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""ALE - CUSTOM SETTINGS """"""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""




" SHOW ERRORS IN STATUS LINE: (airline only)
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1



" NAVIGATE BETWEEN ERRORS QUICKLY:

" ALE offers some commands with <Plug> keybinds for moving between warnings
" and errors quickly. You can map the keys Ctrl+j and Ctrl+k to moving between
" errors for example:
"
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

"More information:  :help ale-navigation-commands.
