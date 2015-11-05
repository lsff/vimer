let g:UltiSnipsUsePythonVersion = 2 "YouCompleteMe只支持py2, python中py2在前,可能导致snips不可用 *-*

let g:UltiSnipsEditSplit = "vertical"

let g:UltiSnipsSnippetsDir = "~/.vim/bundle/ultisnips/lsffultisnips"

let g:UltiSnipsExpandTrigger = "<c-c>" "与YouComplteMe映射冲突
let g:UltiSnipsListSnippets = "<c-tab>" "列出所有snips详细信息
let g:UltiSnipsJumpForwardTrigger = "<c-j>" "插入模式往后跳坑
let g:UltiSnipsJumpBackwardTrigger = "<c-k>" "插入模式往前跳坑

let g:UltiSnipsSnippetDirectories=["UltiSnips", "ultisnips_snips"]

set rtp+=$VIM



