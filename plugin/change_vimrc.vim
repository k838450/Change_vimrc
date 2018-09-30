scriptencoding utf-8

if exists('g:loaded_Change_vimrc_main')
	finish
endif
let g:loaded_Change_vimrc_main = 1

if exists('g:loaded_Change_vimrc_mark')
	finish
endif
let g:loaded_Change_vimrc_mark = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 Main call Change_vimrc_main()
command! -nargs=0 Mark call Change_vimrc_mark()

let &cpo = s:save_cpo
unlet s:save_cpo
