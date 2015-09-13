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
+ 2015/8/31 增加[vim-air-line](https://github.com/bling/vim-airline)
+ 2015/9/01 增加[cpp stl.vim词法高亮](https://github.com/Mizuchi/STL-Syntax)
+ 2015/9/01 增加调整行列数(ps:columns lines 值)快捷方式
+ 2015/9/02 增加[vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight) ps: 高亮c/c++更多语法
+ 2015/9/04 增加wintype类型词法高亮
+ 2015/9/04 增加winerror类型词法高亮(winerror.h 4万多行的源文件，还好vim的宏强大)
+ 2015/9/04 增减[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
+ 2015/9/06 结合airline增加buffer的关闭快捷映射
+ 2015/9/11 增加[gist-vim](https://github.com/mattn/gist-vim) [https://github.com/mattn/webapi-vim] 
+ 2015/9/12 添加colorscheme[molokai](https://github.com/tomasr/molokai)
+ 2019/9/13 添加colorscheme[phd](http://www.vim.org/scripts/script.php?script_id=3139)
