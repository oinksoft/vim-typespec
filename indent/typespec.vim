if exists('b:did_indent')
  finish
end

let b:did_indent = 1

function! s:indent(lnum)
  let line_no = prevnonblank(a:lnum - 1)
  if line_no == 0 | return 0 | endif

  let line_contents = getline(line_no)
  let line_start = match(line_contents, '\S')
  let was_open = match(line_contents, "{") != -1
  let is_close = match(getline(a:lnum), "}") != -1

  let shift = 0
  if was_open | let shift += &sw | endif
  if is_close | let shift -= &sw | endif
  return line_start + shift
endfunction

setlocal indentexpr=<sid>indent(v:lnum)
