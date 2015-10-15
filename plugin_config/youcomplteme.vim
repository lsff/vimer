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

let g:ycm_seed_identifiers_with_syntax = 0 
let g:ycm_extra_conf_vim_data = []
let g:ycm_path_to_python_interpreter = '' "设置python版本

let g:ycm_server_use_vim_stdout = 0

let g:ycm_add_preview_to_completeopt = 1 "详细的补全信息窗口
let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_key_detailed_diagnostics = '<leader>d'

let g:ycm_semantic_triggers =  {
    \   'c' : ['->', '.'],
    \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
    \             're!\[.*\]\s'],
    \   'ocaml' : ['.', '#'],
    \   'cpp,objcpp' : ['->', '.', '::'],
    \   'perl' : ['->'],
    \   'php' : ['->', '::'],
    \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
    \   'ruby' : ['.', '::'],
    \   'lua' : ['.', ':'],
    \   'erlang' : [':'],
    \ }

let g:ycm_goto_buffer_command = 'same-buffer'
let g:ycm_disable_for_files_larger_than_kb = 0
let g:ycm_server_keep_logfiles = 1
let g:ycm_use_ultisnips_completer = 1
