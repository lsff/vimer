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

