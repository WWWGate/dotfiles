"""CURSOR DISPLAY SETTINGS"""
"Give me an easy to see ugly red curosr whenever I go into insertmode.
au InsertEnter * silent highlight Cursor guifg=red guibg=red
au InsertLeave * silent highlight Cursor guifg=#000000 guibg=#F8F8F0


""""""""""""""NOT CURRENTLY USING (START)
"guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

"au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"    
"au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
""""""""""""""NOT CURRENTLY USING (END)

