scriptencoding utf-8

if exists("g:loaded_daily_memo") || &cp
  finish
endif
let g:loaded_daily_memo = 1

let s:save_cpo = &cpo
set cpo&vim

if !exists("g:daily_memo_dir")
  let g:daily_memo_dir = '/tmp'
endif

if !exists("g:daily_memo_extension")
  let g:daily_memo_extension = '.md'
endif

nnoremap <silent> <Leader>m :<C-u>call DailyMemo#Edit()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set ft=vim sw=2 sts=2 et:
