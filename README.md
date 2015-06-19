# vim

#### vimrc

我的vim配置，对C代码更友好，如果你想使用它，可以通过以下几步：

    $ mkdir -p ~/tmp/vim-backup
    $ cp -rf ~/.vim* ~/tmp/vim-backup
    $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    $ curl -s -o ~/.vimrc https://raw.githubusercontent.com/nextkitt/vim/master/vimrc

打开vim，在命令模式输入`:PluginInstall`安装vimrc中的所有插件。更多参考[Vundle.vim](https://github.com/gmarik/Vundle.vim)

#### mycscope

`mycscope = cscope + ctags`。

    nextkitt@localhost:nginx-1.7.10$ nkcscope clean
    nextkitt@localhost:nginx-1.7.10$ ls
    CHANGES    CHANGES.ru LICENSE    README     auto       conf       configure  contrib    html       man        src
    nextkitt@localhost:nginx-1.7.10$ nkcscope 
    nkcscope { xxx }
        java
        c
        cpp
        lua
        python
        clean - clean
        help - help info
    nextkitt@localhost:nginx-1.7.10$ nkcscope c
    nextkitt@localhost:nginx-1.7.10$ ls
    CHANGES       LICENSE       auto          configure     cscope.in.out cscope.po.out man           tags
    CHANGES.ru    README        conf          contrib       cscope.out    html          src
    nextkitt@localhost:nginx-1.7.10$ nkcscope clean
    nextkitt@localhost:nginx-1.7.10$ ls
    CHANGES    CHANGES.ru LICENSE    README     auto       conf       configure  contrib    html       man        src

