nmap <C-right> :let &columns=&columns+1 <CR> :echon "columns="&columns <CR>
nmap <C-left> :let &columns=&columns-1 <CR> :echon "columns="&columns <CR>
nmap <C-up> :let &lines=&lines-1 <CR> :echon "lines="&lines <CR>
nmap <C-down> :let &lines=&lines+1 <CR> :echon "lines="&lines <CR>

nmap <leader>nw :vertical resize 85 <cr>
nmap <leader>nh :resize 25 <cr>

noremap <leader>sb :set scrollbind<CR>  "屏幕滚动绑定
noremap <leader>nsb :set noscrollbind<CR>

nmap <C-k> <C-E> "向上滚屏
nmap <C-j> <C-Y> "向下滚屏
nmap <down> <c-Y>
nmap <up> <C-E>
