"Presetup -- Make sure pathogen plugin is downloaded and installed.
"You can get it here-- https://github.com/tpope/vim-pathogen 
"Direct Download Link-- https://github.com/tpope/vim-pathogen/archive/master.zip
"(see the bottom of this file for very brief instructions, or view them at
"  GitHub page above.)

set nocompatible "Expands options so we aren't limited to what only works with Vi

"Run pathogen plugin to install all plugins in my 'bundle' (Vim\vim82\bundle\) folder of vim
"directory.
execute pathogen#infect()

syntax on "Syntax highlighting on
filetype plugin indent on

"Map F2 key to the write command.
nnoremap <F2> :w<CR>

set ignorecase "Search ignores case
set nowrap "Don't wrap lines.
set wrapscan "Searches loop back to begining of file and don't just stop.

colo molokai "My personal preferance for color.  NOTE: Requires plugin.

set clipboard=unnamedplus "Helps with yanking and pasting between Vim sessions.

"This highlights non-ascii characters in red for easy finding and removing of the of the little jerks.
highlight nonascii guibg=Red ctermbg=1 term=standout
au BufReadPost * syntax match nonascii "[^\u0000-\u007F]"


"INSTALLING PATHOGEN (for Windows)
"1 - Extract the zip file (https://github.com/tpope/vim-pathogen/archive/master.zip)
"2 - Locate the file 'pathogen.vim' in the archive, and copy it here:
" $HOME\vimfiles\
"
" NOTE-- if you dont' know where your $HOME directory is.  Run the following
" command.  
" :echo $HOME
" (from vim normal mode, type    :echo<space>$HOME<CR>  ) <text> are
" representations of actual 'named' keys and are not typed literally.

"ALTERNATIVE TO ABOVE (for Windows)
"Add this to your vimrc:  runtime bundle/vim-pathogen/autoload/pathogen.vim
"  put the file 'pathogen.vim' from the zip archive in teh bundle folder that's
"  located at:  ..\Vim\vim82\   (if it's not there, create it).
