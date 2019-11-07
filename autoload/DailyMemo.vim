scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function! DailyMemo#Edit()
    let l:memo_dir = g:daily_memo_dir.'/'.strftime('%Y/%m')
    let l:memo_file = l:memo_dir.'/'.strftime('%d').g:daily_memo_extension

    call mkdir(l:memo_dir, 'p')
    execute "vsplit ".l:memo_file
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set ft=vim sw=2 sts=2 et:
