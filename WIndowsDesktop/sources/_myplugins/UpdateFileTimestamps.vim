" Last Modified: Fri Mar 20, 2020  03:17AM
" If buffer modified, update any 'Last modified: ' in the first 10 lines.
" Last<space>modified:<space> can have up to 10 characters before (they are retained).
" Restores cursor and window position using save_cursor variable.
function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    let n = min([10, line("$")])
    keepjumps exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
          \ strftime('%a %b %d, %Y  %I:%M%p') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endif
endfun
autocmd BufWritePre * call LastModified()



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" NOTES AND OTHER METHODS """""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Type dts in insert mode to expand to a datestamp: :help abbreviations using an expression :help :map-expression
"     :iab <expr> dts strftime("%c")

" To replace text with the current date in a substitute command:
"     :s/text to replace/\=strftime("%c")/

" Vary the format string (the "%c" argument), to change how the time and/or date are displayed. For some formats, the result may depend on your locale. :help :language

" The specification for the format string itself depends on the implementation of strftime() on your platform. For details, Unix users may refer to the strftime(3) man page, by running 'man 3 strftime'.

" Some strftime() format string examplesEdit
" Format String              Example output
" -------------              --------------
" %c                         Thu 27 Sep 2007 07:37:42 AM EDT (depends on locale)
" %a %d %b %Y                Thu 27 Sep 2007
" %b %d, %Y                  Sep 27, 2007
" %d/%m/%y %H:%M:%S          27/09/07 07:36:32
" %H:%M:%S                   07:36:44
" %T                         07:38:09
" %m/%d/%y                   09/27/07
" %y%m%d                     070927
" %x %X (%Z)                 09/27/2007 08:00:59 AM (EDT)
" %Y-%m-%d                   2016-11-23
" %F                         2016-11-23 (works on some systems)


" RFC822 format:
"     %a, %d %b %Y %H:%M:%S %z   Wed, 29 Aug 2007 02:37:15 -0400

" ISO8601/W3C format (http://www.w3.org/TR/NOTE-datetime):
"     %FT%T%z                    2007-08-29T02:37:13-0400





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML solution as an autocmd which fires when the file is written.
" 
"     :au BufWritePre *.html exe "norm mz"|exe '%s/\(<!-- DATE -->\).\{-\}\d\d:\d\d:\d\d/\1'.strftime("%b %d, %Y %X")."/e"|norm `z
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" An XML file may contain a line like the following (the value is a date/time
" given as the number of milliseconds past the epoch):

"     <property name='p2.timestamp' value='1333222444000'/>

" With the code below in your vimrc, enter :UpdateTimestamps to update the
" value to the current time in each instance of a tag with the format shown
" above. The code uses Vim's strftime() which requires support by the operating
" system, so this will only work on systems which handle %s (the number of
" seconds since the start of 1970-01-01; should be available on Unix systems
" but not Windows).

" function! s:UpdateTimestamps()
"       let tstamp = strftime('%s000')
"         %s#<property name='p2.timestamp' value='\zs\d\+\ze'/>#\=tstamp#g
"           echo 'New time: ' . tstamp
"       endfunction
"       command! UpdateTimestamps call s:UpdateTimestamps()
 
" It is not necessary to type the full command: just type :Up then press Tab for
" command completion. Using a command allows updating to be easily applied to
" multiple buffers, for example, entering :bufdo UpdateTimestamps would update
" all tags in all buffers.
