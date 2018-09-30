scriptencoding utf-8

if exists('g:loaded_Change_vimrc_main')
	finish
endif
let g:loaded_Change_vimrc_mark

if exists('g:loaded_Change_vimrc_mark')
	finish
endif
let g:loaded_Change_vimrc_mark

let s:save_cpo = &cpo
set cpo&vim


function Change_vimrc_main()
	let readfile = "/Users/koba/.mainrc"
	if filereadable(readfile)
		let fromname = "/Users/koba/.vimrc"
		let toname = "/Users/koba/.markrc"
		let comname = "Users/koba/.mainrc"
		call rename(fromname,toname)
		call rename(comname,fromname)
	else
		echo ".mainrc does not exist"
endfunction	
	

function Change_vimrc_mark()
	let readfile = "/Users/koba/.markrc"
	if filereadable(readfile)
		let fromname = "/Users/koba/.vimrc"
		let toname = "/Users/koba/.markrc"
		let comname = "Users/koba/.mainrc"
		call rename(fromname,comname)
		call rename(toname,fromname)
	else
		echo ".markrc does not exist"
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
