"Math function to sum nubmers.
" (see end of file for examples on how to run this.

""""NOTE this may not handle decimals or negative numbers correctly.


let g:SumTheseNumbers = 0  "result in global variable S
function! Sum(number)
  let g:SumTheseNumbers = g:SumTheseNumbers + a:number
  return a:number
endfunction



let g:SumTheseNumbers=0
%s/\d\+/\=Sum(submatch(0))/
echo g:SumTheseNumbers



" You can copy and paste the abve text into a register, and then just run that
" register like this:
" :@+    "This is would be if you copied it to the system/default whatever register.

" :let g:SumTheseNumbers=0
" :%s/\d\+/\=Sum(submatch(0))/
" :echo g:SumTheseNumbers
