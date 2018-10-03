if exists('g:loaded_change_vimrc')
	finish
endif
let g:loaded_change_vimrc = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 -complete=command Main call <SID>Change_vimrc_main<CR>
command! -nargs=0 -complete=command Mark call <SID>Change_vimrc_mark<CR>

function s:Change_vimrc_main()
	let readfile = "/Users/koba/.mainrc"
	if filereadable(readfile)
		let s:fromname = "/Users/koba/.vimrc"
		let s:toname = "/Users/koba/.markrc"
		let s:comname = "/Users/koba/.mainrc"
		call rename(s:fromname,s:toname)
		call rename(s:comname,s:fromname)
	else
		echo ".mainrc does not exist"
	endif
endfunction	
	

function s:Change_vimrc_mark()
	let readfile = "/Users/koba/.markrc"
	if filereadable(readfile)
		let s:fromname = "/Users/koba/.vimrc"
		let s:toname = "/Users/koba/.markrc"
		let s:comname = "/Users/koba/.mainrc"
		call rename(s:fromname,s:comname)
		call rename(s:toname,s:fromname)
	else
		echo ".markrc does not exist"
	endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
