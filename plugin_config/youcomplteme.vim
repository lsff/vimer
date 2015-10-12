let g:ycm_always_populate_location_list = 1 ":lopen查看diagnotic message
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR> "recompile the fileh

let g:ycm_open_loclist_on_ycm_diags = 1

nnoremap <leader>jd :YcmCompleter GoToDefinition<CR> "跳转到定义
nnoremap <leader>ji :YcmCompleter GoToImprecise<CR> "跳转到定义

