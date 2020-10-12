let g:ctrlsf_position = 'right'
let g:ctrlsf_winsize = '50%'
let g:ctrlsf_auto_close = {
  \ "normal" : 0,
  \ "compact": 1
  \}
let g:ctrlsf_auto_focus = {
  \ "at": "start"
  \ }

nmap <Leader>ps <Plug>CtrlSFPrompt
vmap <Leader>ps <Plug>CtrlSFVwordPath
