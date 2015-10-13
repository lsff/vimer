nnoremap <F5> :YcmForceCompileAndDiagnostics<CR> "recompile the fileh

nnoremap <leader>jd :YcmCompleter GoToDefinition<CR> "跳转到定义
nnoremap <leader>ji :YcmCompleter GoToImprecise<CR> "跳转到定义

let g:ycm_always_populate_location_list = 1 ":lopen查看diagnotic message
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

let g:ycm_min_num_of_chars_for_completion = 3 "开始补全的字符数
let g:ycm_auto_trigger = 1
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_filetype_blacklist = {
        \ 'tagbar' : 1,
        \ 'qf' : 1,
        \ 'notes' : 1,
        \ 'markdown' : 1,
        \ 'unite' : 1,
        \ 'text' : 1,
        \ 'vimwiki' : 1,
        \ 'pandoc' : 1,
        \ 'infolog' : 1,
        \ 'mail' : 1
        \}

let g:ycm_show_diagnostics_ui = 1  
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0 "消除错误提示取消
let g:ycm_open_loclist_on_ycm_diags = 1
let g:ycm_complete_in_comments = 0
