"Last Modified: Fri Mar 20, 2020  03:29AM

"The below highlights non-ascii characters in red for easy finding and removing of the of the little jerks.
highlight nonascii guibg=Red ctermbg=1 term=standout
au BufReadPost * syntax match nonascii "[^\u0000-\u007F]"



