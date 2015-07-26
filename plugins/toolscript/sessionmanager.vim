"Author: LiuShifeng
"LoadOnce
if exists("g:loadSessionManager")
	finish
endif
let g:loadSessionManager=1

if !has('python')
	echohl WarningMsg | echo "Python3 is needed to support SessionManager!" | echohl None
	finish
endif

function! SessionManager_AutoSaveToSession()
python<<EOF
import os
import vim
def MsgInfo(strErr):
	vim.command("redraw | echohl WarningMsg | echo '"+strErr+"' | echohl None")
def Py_SessionManager_AutoSaveToSession():
	if int(vim.eval('!exists("g:SessionSaveDir")')): #vim.eval返回字符串
		MsgInfo('Error: g:SessionSaveDir is UnDefined!')
		return 0
	if not os.path.isdir(vim.eval('g:SessionSaveDir')):
		MsgInfo('Error: SessionDirectory=' + vim.eval('g:SessionSaveDir') + ' is not exist!')
		return 0
	if int(vim.eval('exists("v:this_session") && !empty(v:this_session)')):
		vim.command(':wa|mksession! ' + vim.eval('v:this_session'))
		MsgInfo('Session '+vim.eval("v:this_session") + " is saved successfully!")
		return 0
	strSessionDir = vim.eval('g:SessionSaveDir')
	assert(os.path.isdir(strSessionDir))
	if not strSessionDir.endswith('\\') and not strSessionDir.endswith('/'):
		strSessionDir = strSessionDir + '/'
	strSessionFileName = vim.eval('input(\'Save Session to File: '+strSessionDir+'\')')
	if not len(strSessionFileName):
		MsgInfo('Save Session Abord!')
		return
	strSessionFileFullName = os.path.join(strSessionDir, strSessionFileName)
	if os.path.exists(strSessionFileFullName):
		vim.command('redraw')
		overwrite = vim.eval('input(\'File ' + strSessionFileFullName + 'is already exists! Overwrite y/n?\')')
		if overwrite.upper() != 'Y':
			MsgInfo('Save Session Fail!')
			return 0
	vim.command(':wa|mksession! ' + strSessionFileFullName)
	MsgInfo('Session ' + strSessionFileFullName  + " is saved successfully!")
	return 0

Py_SessionManager_AutoSaveToSession()
EOF
endfunction

nmap <F2> :call SessionManager_AutoSaveToSession()<CR>
