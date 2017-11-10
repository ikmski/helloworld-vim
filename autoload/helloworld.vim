" エンコーディング指定
scriptencoding utf-8

" ロード済みでなければ終了する
if !exists('g:loaded_helloworld_vim')
    finish
endif

" ユーザ設定を一時退避
let s:save_cpo = &cpoptions
set cpoptions&vim

function! helloworld#helloworld()
    echo "Hello World!"
endfunction

" 退避していたユーザ設定を戻す
let &cpoptions = s:save_cpo
unlet s:save_cpo
