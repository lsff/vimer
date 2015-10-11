set nocp
filetype plugin on

let g:netrw_list_hide=".*\.swp$,.*\\~$"

if !exists('g:iswindows')
	let g:iswindows = (has('win32') || has('win64'))
endif

if g:iswindows
	let g:netrw_ftp_cmd= 'c:\Windows\System32\ftp'
endif
