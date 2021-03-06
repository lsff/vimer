let g:airline_left_sep = '' "左端分割符号,默认是>

let g:airline_right_sep = '' "右端分割符号,默认是<

let g:airline_detect_modified = 1

let g:airline_detect_crypt = 1

let g:airline_detect_iminsert = 1

let g:airline_detect_paste = 1

let g:airline_inactive_collapse = 1

"let g:airline_theme = "airline theme主题

let g:airline_powerline_fonts = 1

"状态mode的缩写 Simple is Best!
let g:airline_mode_map = {
     \ '__' : '-',
     \ 'n'  : 'N',
     \ 'i'  : 'I',
     \ 'R'  : 'R',
     \ 'c'  : 'C',
     \ 'v'  : 'V',
     \ 'V'  : 'V',
     \ '^V' : 'V',
     \ 's'  : 'S',
     \ 'S'  : 'S',
     \ '' : 'S',
     \ }

"airline开关
nmap <silent> <leader>tt :AirlineToggle<cr>
"重新刷新airline
nmap <silent> <leader>tr :AirlineRefresh<cr> 

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#show_tab_nr = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

let g:airline#extensions#tabline#fnamemod = ':t' "只显示文件名 More info Refers To help filename-modifiers
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

"tabline buffers之间的间隔
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#close_symbol = 'X'

function! s:delete_tab(tab_index)
	let buf_idx = get(airline#extensions#tabline#buflist#list(), a:tab_index, -1)
	if buf_idx != -1
		exec 'bdel' . buf_idx
	endif
endfunction

noremap <unique> <Plug>AirlineDeleteTab1 :call <SID>delete_tab(0)<CR>
noremap <unique> <Plug>AirlineDeleteTab2 :call <SID>delete_tab(1)<CR>
noremap <unique> <Plug>AirlineDeleteTab3 :call <SID>delete_tab(2)<CR>
noremap <unique> <Plug>AirlineDeleteTab4 :call <SID>delete_tab(3)<CR>
noremap <unique> <Plug>AirlineDeleteTab5 :call <SID>delete_tab(4)<CR>
noremap <unique> <Plug>AirlineDeleteTab6 :call <SID>delete_tab(5)<CR>
noremap <unique> <Plug>AirlineDeleteTab7 :call <SID>delete_tab(6)<CR>
noremap <unique> <Plug>AirlineDeleteTab8 :call <SID>delete_tab(7)<CR>
noremap <unique> <Plug>AirlineDeleteTab9 :call <SID>delete_tab(8)<CR>

nmap <leader>d1 <Plug>AirlineDeleteTab1
nmap <leader>d2 <Plug>AirlineDeleteTab2
nmap <leader>d3 <Plug>AirlineDeleteTab3
nmap <leader>d4 <Plug>AirlineDeleteTab4
nmap <leader>d5 <Plug>AirlineDeleteTab5
nmap <leader>d6 <Plug>AirlineDeleteTab6
nmap <leader>d7 <Plug>AirlineDeleteTab7
nmap <leader>d8 <Plug>AirlineDeleteTab8
nmap <leader>d9 <Plug>AirlineDeleteTab9
