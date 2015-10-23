#-*- coding: utf-8 -*-

import os
import sys
import shutil

strErrorInfo = '参数有误'
strUsageMsg = 'Usage: vimconfig.py vimfiles=[vimfiles目录] plugins=[plugins目录] vimruntime=[vim中$VIMRUNTIME值] vimrc=[vimrc文件路劲] (ps:两边不能有空格; 路径有空格应该用""包起来)'

def CheckArgus(*args):
    if len(args) != 4:
        return False
    argsDict = dict.fromkeys(['vimfiles', 'plugins', 'vimruntime', 'vimrc'])
    for curArg in args:
        try:
            argPair = curArg.split('=', 1)
        except:
            return False
        else:
            if len(argPair) != 2 or not argPair[0] in argsDict :
                return False
            argsDict[argPair[0]] = argPair[1]
    return argsDict

def GetAndCheckVIMPathFromArgs(*args):
    strVimPath = ''
    if len(args) == 0 or len(args) > 1:
        return strVimPath
    if os.path.isdir(args[0]):
        #检查vimfiles
        strVimfilesPath = args[0].rstrip()
        if not strVimfilesPath.endswith('/'):
            strVimfilesPath = strVimfilesPath + '/'
        strVimfilesPath += 'vimfiles'
        if os.path.isdir(strVimfilesPath):
            strVimfilesPathSubDir = strVimfilesPath + '/'
            listCheckDirs = ['colors', 'compiler', 'doc', 'ftdetect', 'ftplugin', 'indent', 'keymap', 'plugin', 'syntax']
            for cDir in listCheckDirs:
                strCheckDir = strVimfilesPathSubDir + cDir
                if not os.path.isdir(strCheckDir):
                    break
            else:
                strVimPath = args[0]
    return strVimPath

def RecurseCopyDir(srcDir, destDir):
    for root, subDirs, subFiles in os.walk(srcDir):
        relRootPath = os.path.relpath(root, start=srcDir)
        if relRootPath != '.' and not os.path.exists(os.path.join(destDir, relRootPath)):
            shutil.copytree(root, os.path.join(destDir, relRootPath))
            continue
        for cFile in subFiles:
            shutil.copyfile(os.path.join(root, cFile), os.path.join(destDir, relRootPath, cFile))

def InstallVimfiles(vimfilesSrc, vimfilesDest):
    vimfilesSub = ['colors', 'compiler', 'doc', 'ftdetect', 'ftplugin', 'indent', 'keymap', 'plugin', 'syntax', 'after']
    for root, subDirs, subFiles in os.walk(vimfilesSrc):
        if not os.path.basename(root) in vimfilesSub:
            continue
        for cFile in subFiles :
            #Todo: 提示覆盖
            if cFile.endswith('.vim') or cFile.endswith('.txt'):
                shutil.copyfile(os.path.join(root, cFile), os.path.join(vimfilesDest, os.path.basename(root), cFile))
        for subDir in subDirs:
            InstallPlugin(os.path.join(root, subDir), os.path.join(vimfilesDest, os.path.basename(root), subDir))

def InstallPlugin(pluginSrc, pluginDest):
    if not os.path.exists(pluginDest):
        shutil.copytree(pluginSrc, pluginDest, ignore=shutil.ignore_patterns("*~", "*swp"))
    else:
        RecurseCopyDir(pluginSrc, pluginDest) 

def InstallVimbin(vimruntimeSrc, vimruntimeDest):
    InstallPlugin(vimruntimeSrc, vimruntimeDest)

def InstallPluginConfig(pluginconfigSrc, pluginconfigDest):
    InstallPlugin(pluginconfigSrc, pluginconfigDest)

if __name__ == '__main__':
    #配置vim

    argsDict = CheckArgus(*sys.argv[1:])
    if not argsDict:
        print(strErrorInfo, strUsageMsg, sep='\n')
        sys.exit()
    
    #1, 复制Vimfiles
    if not os.path.isdir(argsDict['vimfiles']):
        print(strErrorInfo, 'vimfiles目录不存在', '\n')
        sys.exit()
    szVimfilesSrc = 'vimfiles/'
    InstallVimfiles(szVimfilesSrc, argsDict['vimfiles'])

    #2, 复制plugins目录
    if not os.path.isdir(argsDict['plugins']):
        print(strErrorInfo, 'plugins目录不存在', '\n')
        sys.exit()
    szPluginsSrc = 'plugins/'
    InstallPlugin(szPluginsSrc, argsDict['plugins'])

    #3, 复制vimruntime目录 一些插件需要把可执行文件放在vim/gvim可执行文件所在目录
    if not os.path.isdir(argsDict['vimruntime']):
        print(strErrorInfo, 'vimruntime目录不存在', '\n')
        sys.exit()
    szVimbinSrc = 'runtime/'
    InstallVimbin(szVimbinSrc, argsDict['vimruntime'])


    #4, 复制lsffvimrc 并修改vimrc文件
    szVIMDir = os.path.dirname(argsDict['vimruntime'][0:len(argsDict['vimruntime']) - 1])  if argsDict['vimruntime'].endswith('\\') or argsDict['vimruntime'].endswith('/') else os.path.dirname(argsDict['vimruntime'])

    if not os.path.exists(argsDict['vimrc']):
        print(strErrorInfo, 'vimrc文件路径不存在', '\n')
        sys.exit()
    shutil.copy('lsffvimrc', szVIMDir)
    lineAppend = 'source $VIM\lsffvimrc'
    for line in open(argsDict['vimrc']):
        if line.rstrip('\n ') == lineAppend :
            break
    else:
        fileVimrc = open(argsDict['vimrc'], 'a')
        print(lineAppend, file=fileVimrc)

    #5, 复制plugin_config目录
    szVimPluginConfig = 'plugin_config'
    szVimPluginConfigDest = os.path.join(os.path.dirname(argsDict['vimruntime']), szVimPluginConfig)
    if os.path.exists(szVimPluginConfig):
        InstallPluginConfig(szVimPluginConfig, szVimPluginConfigDest)
