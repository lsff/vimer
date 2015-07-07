#-*- coding: utf-8 -*-

import os
import sys
import shutil

strErrorInfo = '参数有误'
strUsageMsg = 'Usage: vimconfig.py [vim 安装目录]'

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

def InstallVimfiles(vimfilesSrc, vimfilesDest):
    vimfilesSub = ['colors', 'compiler', 'doc', 'ftdetect', 'ftplugin', 'indent', 'keymap', 'plugin', 'syntax']
    for root, subDir, subFiles in os.walk(vimfilesSrc):
        if not os.path.basename(root) in vimfilesSub:
            continue
        assert len(subDir) == 0
        for cFile in subFiles :
            #Todo: 提示覆盖
            if cFile.endswith('.vim'):
                shutil.copyfile(os.path.join(root, cFile), os.path.join(vimfilesDest, os.path.basename(root), cFile))

def RecurseCopyDir(srcDir, destDir):
    for root, subDirs, subFiles in os.walk(srcDir):
        relRootPath = os.path.relpath(root, start=srcDir)
        if relRootPath != '.' and not os.path.exists(os.path.join(destDir, relRootPath)):
            shutil.copytree(root, os.path.join(destDir, relRootPath))
            continue
        for cFile in subFiles:
            shutil.copyfile(os.path.join(root, cFile), os.path.join(destDir, relRootPath, cFile))
        

def InstallPlugin(pluginSrc, pluginDest):
    if not os.path.exists(pluginDest):
        shutil.copytree(pluginSrc, pluginDest, ignore=shutil.ignore_patterns("*~", "*swp"))
    else:
        RecurseCopyDir(pluginSrc, pluginDest) 



if __name__ == '__main__':
    #配置vim
    strVimPath = GetAndCheckVIMPathFromArgs(*sys.argv[1:])
    if not len(strVimPath):
        print(strErrorInfo, strUsageMsg, sep='\n')
        sys.exit()
    assert len(strVimPath) and os.path.isdir(strVimPath)

    strVimfilesSrc = 'vimfiles/'
    assert os.path.isdir(strVimfilesSrc)
    strVimfilesDest = strVimPath + 'vimfiles/' if strVimPath.endswith('/') else strVimPath + '/vimfiles/'
    InstallVimfiles(strVimfilesSrc, strVimfilesDest)
    
    strVimPluginSrc = 'plugin/'
    assert os.path.isdir(strVimPluginSrc)
    strVimPluginDest = strVimPath + 'plugin/' if strVimPath.endswith('/') else strVimPath + '/plugin/'
    InstallPlugin(strVimPluginSrc, strVimPluginDest)

    strVimExe = 'vimexe/'
    assert os.path.isdir(strVimExe)
    strVimExeDest = os.path.join(strVimPath, 'vim74')
    if os.path.exists(strVimExeDest):
        InstallPlugin(strVimExe, strVimExeDest)
