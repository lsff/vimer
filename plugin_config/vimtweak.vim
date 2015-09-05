if g:iswindows
	"VimTweak
	"透明
	let g:vimtweakAlpha=220
	function! VimTweak_SetAlpha(vAlpha)
		:call libcallnr("VimTweak//vimtweak.dll", "SetAlpha", a:vAlpha)
		redraw! "消除命令后的显示
		let g:vimtweakAlpha=a:vAlpha
	endfunction
	function! VimTweak_AdjustAlpha(bIncress)
		if a:bIncress
			if g:vimtweakAlpha >= 255
				:redraw | echohl WarningMsg | echo "Current Alpha is BIGGEST(255)!" | echohl none <cr>
			else
				let g:vimtweakAlpha+=1
				:call VimTweak_SetAlpha(g:vimtweakAlpha)
			endif
		else
			if g:vimtweakAlpha <= 0
				:redraw | echohl WarningMsg | echo "Current Alpha is SMALLEAST(0)!" | echohl none <cr>
			else
				let g:vimtweakAlpha-=1
				:call VimTweak_SetAlpha(g:vimtweakAlpha)
			endif
		endif
	endfunction
	map <leader>aw :call VimTweak_SetAlpha(200)<cr>
	map <leader>aW :call VimTweak_SetAlpha(255)<cr>
	nmap <F12> :call VimTweak_AdjustAlpha(1)<cr>
	nmap <F11> :call VimTweak_AdjustAlpha(0)<cr>
	autocmd GUIEnter * call VimTweak_SetAlpha(g:vimtweakAlpha)

	"最大化
	map <leader>mw :call libcallnr("VimTweak//vimtweak.dll", "EnableMaximize", 1)<cr>
	map <leader>Mw :call libcallnr("VimTweak//vimtweak.dll", "EnableMaximize", 0)<cr>
	"Top most
	map <leader>et :call libcallnr("VimTweak//vimtweak.dll", "EnableTopMost", 1)<cr>
	map <leader>eT :call libcallnr("VimTweak//vimtweak.dll", "EnableTopMost", 0)<cr>
endif

