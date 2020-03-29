"""""""""""""""""""""""""""""""""""
""""""""""MAPPINGS"""""""""""""""""
"""""""""""""""""""""""""""""""""""

"Map F2 key to the write command.
nnoremap <F2> :w<CR>

nnoremap <F5> "=strftime("%c")<CR>
inoremap <F5> <C-R>=strftime("%c")<CR>


nmap <F8> <Plug>(ale_fix)
let g:ale_fixers = {'perl': ['perltidy']}


"Last_Updated: 3/19/2020 2:40:19 PM
