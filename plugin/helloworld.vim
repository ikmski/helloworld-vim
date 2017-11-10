" エンコーディング指定
scriptencoding utf-8

" 既にロード済みなら終了する
if exists('g:loaded_helloworld_vim')
    finish
endif
let g:loaded_helloworld_vim = 1

" ユーザ設定を一時退避
let s:save_cpo = &cpoptions
set cpoptions&vim

:nmap z :call helloworld#helloworld()<CR>

" 退避していたユーザ設定を戻す
let &cpoptions = s:save_cpo
unlet s:save_cpo
