if exists('g:loaded_change_vimrc')
	finish
endif
let g:loaded_change_vimrc = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 -complete=command Main call <SID>Change_vimrc_main()<CR>
command! -nargs=0 -complete=command Mark call <SID>Change_vimrc_mark()<CR>

function s:Change_vimrc_main()
	let readfile = "/Users/koba/.mainrc"
	if filereadable(readfile)
		let fromname = "/Users/koba/.vimrc"
		let toname = "/Users/koba/.markrc"
		let comname = "Users/koba/.mainrc"
		call rename(fromname,toname)
		call rename(comname,fromname)
	else
		echo ".mainrc does not exist"
	endif
endfunction	
	

function s:Change_vimrc_mark()
	let readfile = "/Users/koba/.markrc"
	if filereadable(readfile)
		let fromname = "/Users/koba/.vimrc"
		let toname = "/Users/koba/.markrc"
		let comname = "Users/koba/.mainrc"
		call rename(fromname,comname)
		call rename(toname,fromname)
	else
		echo ".markrc does not exist"
	endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
