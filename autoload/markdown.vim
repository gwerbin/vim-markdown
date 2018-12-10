"function! markdown#GetLineNo(lineno) abort
"  let l:type = type(a:lineno)
"
"  if l:type == 1
"    return line(a:lineno)
"  elseif l:type == 0
"    return a:lineno
"  else
"    echoerr 'Invalid line number: ' . a:lineno
"  endif
"endfunction


function! markdown#MakeHeaderSetext(lineno, level)
  if a:level == 1
    let l:underline_char = g:markdown_setext1
  elseif a:level == 2
    let l:underline_char = g:markdown_setext2
  elseif a:level == 3
    let l:underline_char = g:markdown_setext3
  elseif a:level == 4
    let l:underline_char = g:markdown_setext4
  else
    echoerr 'Invalid level: ' . a:level
  endif

  let l:line_len = max([len(getline(a:lineno)), g:markdown_setext_minlength])
  append(line(lineno), repeat(l:underline_char, l:line_len))
endfunction


function! markdown#MakeHeaderATX(lineno, level)
  if a:level < 1 || a:level > 4
    echoerr 'Invalid level: ' . a:level
  endif

  setline(lineno, repeat('#', a:level) . getline(lineno))
endfunction

" vim: set expandtab shiftwidth=2 tabstop=2:
