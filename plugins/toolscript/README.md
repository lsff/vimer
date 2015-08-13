#SessionManager插件
功能描述： 方便生成和读取vim 的会话(session)文件， 关于session的功能请 :help session

##安装方法(2种)：
* (1) 直接把sessionmamager.vim文件拷贝到vim目录的plugin文件夹; (2)在vimrc配置文件中定义全局变量g:SessionSaveDir变量，该变量指定session文件存放的目录位置

* (1)运行vimconfig.py文件; (2)修改lsffvimrc文件中的g:SessionSaveDir变量为自己指定的目录

##使用方法：
a. 调用SessionManager_AutoSaveToSession()函数;可使用nmap映射

###支持功能：
- [x] 自动保存session文件
- [ ] 自动读取session目录

