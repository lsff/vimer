#自动化配置VIM

##安装方法：
`执行python脚本命令`
Usage: vimconfig.py vimfiles=[vimfiles目录] plugins=[plugins目录] vimbin=[vim运行文件所在目录] vimrc=\[vimrc文件路劲] (ps:两边不能有空格; 路径有空格应该用""包起来)'

1. Windows环境
找到vim的安装目录,[vimfiles]在安装目录下的名字一般就为"vimfiles", 而[vim运行文件所在目录]在安装目录下的名字为vim74(不同版本名字可以有差异)
2. inux环境
whichis gvim 命令可以查看vim的运行文件和vimfiles目录的位置

ps:[plugins目录]为新增目录,父目录通过运行vim,运行echo $VIM获得VIM目录,就在改目录下面创建plugins


****

#####更新
+ 2015/8/13 增加[vmdcmd](https://code.google.com/p/cmd-dot-vim/)
+ 2015/8/31 修改guifont为[Input](http://input.fontbureau.com/download/); 修改encoding为utf-8; 修改message的语言为en_US


