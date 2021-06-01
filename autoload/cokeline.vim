function! cokeline#handle_click(minwid, clicks, button, modifiers)
  let l:command = (a:button =~ 'l') ? 'buffer' : g:cokeline_mouse_close_command
  execute printf('%s %s', l:command, a:minwid)
endfunction

function! cokeline#close_button_handle_click(minwid, clicks, button, modifiers)
  if a:button != 'l' | return | endif
  execute printf('%s %s', g:cokeline_mouse_close_command, a:minwid)
endfunction
