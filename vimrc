""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Vundle {{{
set nocompatible                    "关闭对vi的兼容
filetype off                        "使用vundle必须的设置

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'taglist.vim' " 显示代码结构概览
Plugin 'The-NERD-Commenter' " 智能注释
Plugin 'DoxygenToolkit.vim' " 添加doxygen注释
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'rails.vim'
Plugin 'ack.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'The-NERD-tree' "在VIM的编辑窗口树状显示文件目录
Plugin 'Yggdroot/indentLine' " 代码纵向对齐线 非常影响效率。

Plugin 'DrawIt' " vim绘画工具

""" markdown {
    "Plugin 'plasticboy/vim-markdown' " markdown文档语法高亮
""" }

""" python {
    Plugin 'pythoncomplete' " python 自动补全
    Plugin 'Pydiction' " python 标签补全
    Plugin 'pyflakes.vim' " 语法检查
    "Plugin 'pep8' " python PEP8
    Plugin 'pydoc.vim' " 在vim中查看python帮助文档
""" }

""" vim主题 {
    """ ubuntu下需要
    """ $ sudo apt-get install vim-gnome

    Plugin 'jaromero/vim-monokai-refined' " 仿sublime text 2的主题 Monokai-Refined
    "Plugin 'flazz/vim-colorschemes' " 包含了N多vim主题
    "Plugin 'altercation/vim-colors-solarized' " 来自 http://ethanschoonover.com/solarized 的配色方案
    Plugin 'hexHighlight.vim' " 查看颜色表
""" }

""" json {

    """ JSON.vim 和 elzr/vim-json 的区别在于：
    """ - JSON.vim折叠只有foldmethod=indent有效，且折叠深度有限
    """ - elzr/vim-json 的加载速度慢。

    "Plugin 'JSON.vim' " json 语法高亮
    "Plugin 'elzr/vim-json' " json 语法高亮、折叠

    "Plugin 'michalliu/sourcebeautify.vim' " 格式化json文档

""" }

""" JavaScript {

    Plugin 'maksimr/vim-jsbeautify' " javascript美化工具

""" }

""" 好玩的
""" {
    """ matrix.vim
    "Plugin 'matrix.vim'
    "Plugin 'vim-scripts/matrix.vim'
    "Plugin 'vim-scripts/matrix.vim--Yang'
""" }


call vundle#end()            " required
filetype plugin indent on    " required

""" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 基本设置"""

syntax enable                       "语法高亮
syntax on                           "语法高亮
set imcmdline                       "???
set modeline                        "vim启动时是否读取Modeline，如shell的文件尾行# vim: set ts=4 sw=4


""" 缩进 {
set autoindent                      "新增加的行和前一行使用相同的缩进形式
set cindent                         "C语言缩进
set smartindent                     "每一行都和前一行有相同的缩进量，同时这种缩进形式能正确的识别出花括号，当遇到右花括号（}），则取消缩进形式。
"增加缩进 >>
"减少缩进 <<
""" }


""" tab {
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
""" }


""" 搜索 {
"set ignorecase                      "搜索时忽略大小写。
"set smartcase                       "
"set incsearch                       "输入搜索内容时逐字符高亮
"set nowrapscan                      "禁止在搜索到文件两端时重新搜索
set hlsearch                        "搜索时高亮显示被找到的文本
""" }


""" 匹配 {
set showmatch                       "高亮显示匹配的括号
set matchtime=1                     "匹配括号高亮的时间（单位是十分之一秒）
""" }


""" 折叠 {
set foldmethod=syntax               "折叠方式按照语法折叠
set foldlevel=100                   "折叠深度100
""" }


""" 文件类型 {
filetype on                         "检测文件类型 
filetype plugin on                  "载入文件类型插件 
filetype indent on                  "为特定文件类型载入相关缩进文件 
""" }


""" 文件编码 {
set termencoding=utf-8
"encoding是Vim的内部使用编码，encoding的设置会影响Vim内部的Buffer、消息文字等。
set encoding=utf-8
"vim在打开文件时根据fileencodings选项来识别文件编码。
set fileencodings=utf-8,gb2312,gbk,gb18030,ucs-bom,cp936,big5,euc-jp,euc-kr,latin1
"vim在保存新建文件时会根据fileencoding的设置编码来保存。如果是打开已有文件，Vim会根据打开文件时所识别的编码来保存，除非在保存时重新设置fileencoding。
"set fileencoding=utf-8
""" }


""" 显示语言 {
"set helplang=cn                    "中文帮助
"set langmenu=zh_CN.UTF-8           "设置中文菜单及编码
"language message zh_CN.UTF-8       "使用中文提示信息
""" }


""" backspace {
" 指定vim在insert模式下退格键何时可以删除光标之前的字符
" indent(缩进), eol(断行), start(开始进入insert之前的位置)
" 如果不设置start,在回退时,智能删除自己新添加的字符,已有字符无法删除.
set backspace=indent,eol,start
""" }


""" 界面设置 {
set number                          "显示行号
set cmdheight=1                     "命令栏高度
set laststatus=2                    "总是显示状态行
set shortmess=atI                   "不显示乌干达儿童
set showcmd                         "在状态栏显示目前所执行的指令，未完成的指令片段亦
set novisualbell                    "不要闪烁
set ruler                           "在状态列显示游标所在处之行列状态，预设不打开，但建议打开。
set showcmd                         "在状态列显示执行的指令
set showmode                        "在状态列显示目前的模式
set showfulltag                     "???
"set scrolloff=3                     "控制光标与顶部或是底部距离3行滚动窗口，默认1行。
""" }


""" 配色方案 {
"set t_Co=256                        "指定配色方案是256色, darkburn.vim
"colorscheme solarized
"set cursorline                      "光标横向线
"set cursorcolumn                    "光标纵向线
"set colorcolumn=85                  "彩色显示第85行
"set background=light               "背景色
"set background=dark                "背景
"set mouse=a                        "鼠标滚动
"colorscheme elflord
"colorscheme darkblue
"colorscheme evening
"colorscheme murphy
"colorscheme torte
"colorscheme desert

set colorcolumn=80
""" }


""" 其他 {
"au bufwritepost .vimrc source %    "自动加载修改的配置文件
set ambiwidth=double                "阻止特殊符号无法显示
"set autoread                       "自动加载修改的文件
set history=1000                    "记录历史文件数”
"set confirm                         "在处理未保存或只读文件的时候，弹出确认
set vb t_vb=                        "去掉错误警告时的提示音
""" }
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" cscope {
" 自动加载当前目录下的 cscope.out
if has("cscope")
    if filereadable("cscope.out")
        cscope add  cscope.out
    endif
endif
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" TOhtml {
"TOhtml
let html_number_lines = 0           "导出html时不显示行号
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" taglist.vim {
" TagList插件,是一款基于ctags,在vim代码窗口旁以分割窗口形式显示当前的代码结构概览,增加代码浏览的便利程度的vim插件。

set tags=tags                       "vim使用的tag文件的名字，即ctags命令创建的tag文件。
"set autochdir                       "自动切换工作目录
let Tlist_Show_One_File=1           "缺省为显示多个文件中的tag, 如果你不想同时显示多个文件中的tag, 设置Tlist_Show_One_File为1。
let Tlist_Exit_OnlyWindow=1         "如果taglist窗口是最后一个窗口，则退出vim
"taglist 窗口位置, 缺省左侧
let Tlist_Use_Right_Window=1        "右侧
let Tlist_WinWidth=50               "宽度, 与 Tlist_Use_Right_Window 联用
"let Tlist_Use_Horiz_Window=1       "横向
"let Tlist_WinHeight=10             "高度, 与 Tlist_Use_Horiz_Window 联用
"let Tlist_Close_On_Select=1        "选择一个 tag后,taglist窗口自动关闭。
"let Tlist_Auto_Open=1              "vim启动后自动打开tag
"let Tlist_Use_SingleClick=1         "单击tag就跳转, 缺省双击
let Tlist_GainFocus_On_ToggleOpen=1 "打开taglist时将光标移动到tag窗口
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" The-NERD-Commenter {
" n\cc : 为光标以下 n 行添加注释
" n\cu : 为光标以下 n 行取消注释
" n\cm : 为光标以下 n 行添加块注释
" \cm映射为<F2>表示注释代码快，\cu映射为<F3>表示解注释。
filetype on                         "必须开启
" 在可视化模式下，即选择要注释的代码块按键<F2>注释，按键<F3>解注释。
"vmap <F2> \cc
"vmap <F3> \cu
" 选择行或多行，被选择的行已被注释，按<F2>解注释，如果未被注释，按<F2>注释
vmap <F2> \c 
" 详解
"\cc                                "注释当前行或已选择的文档
"\c<space>                          "对当前行或者已选择的文档进行注释或解注释
"\cm                                "对当前行或者已选择的文档进行块注释
"\cs                                "对当前行或者已选择的文档进行性感注释
"\c$                                "注释光标处到行尾
"\cA                                "行尾提供注释，并进入插入模式
"\ca                                "如果文件类型支持多种注释符号，在多种注释符号间切换，如C语言的//与/**/
"\cl                                "块注释，左对齐注释符号
"\cb                                "块注释，右对齐注释符号
"\cu                                "取消注释
"
" 在行尾添加注释，并将光标移动到待写注释位置
map <C-x>a A /*  */<Esc>hhi
" 在行前插入一行注释，并将光标移动到待写注释位置
map <C-x>b O/*  */<Esc>hhi
map <C-x>m A #  <Esc>i
map <C-x>z O#  <Esc>i

""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" DoxygenToolkit {
" DoxygenToolkit 添加注释，使用doxygen命令行工具导出html等格式项目文档。
" 支持c,cpp,php,java.

let g:DoxygenToolkit_authorName="name@gmail.com" "设置文件作者姓名
"let s:licenseTag = "Copyright(C)\<enter>" "设置版本许可证信息
"let s:licenseTag = s:licenseTag . "For free\<enter>" "设置版本许可证信息
"let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
"设置版本许可证信息
"let g:DoxygenToolkit_licenseTag = s:licenseTag "设置版本许可证信息
"let g:doxygen_enhanced_color=1
" 添加注释时添加 block header and block footer.
let g:DoxygenToolkit_briefTag_funcName="yes" "添加注释时自动添加函数名
let g:DoxygenToolkit_briefTag_className="yes" "添加注释时自动添加类名
let g:DoxygenToolkit_briefTag_structName="yes" "添加注释时自动添加结构体名
let g:DoxygenToolkit_briefTag_namespaceName="yes"
"添加注释时自动添加名字空间名
" /**
"  * \brief foo             /**
"  *                         * \brief foo
"  * \param bar      --->    * \param bar
"  *                         * \return
"  * \return                 */
"  */
let g:DoxygenToolkit_compactDoc="yes" "见上面的例子
"
"使用方法
"命令行 :Dox 光标处于函数定义行，添加函数信息
"命令行 :DoxAuthor 添加作者信息
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" AuthorInfo {
" 自动添加作者信息
" 使用过程中报错：E492: 不是编辑器的命令: AuthorInfoDetect
" 暂时放弃

"let g:vimrc_author='name' 
"let g:vimrc_email='name@gmail.com'
"let g:vimrc_homepage='http://name.com' 
 
"nmap <F4> :AuthorInfoDetect<cr>
"""}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" scrooloose/nerdtree {
"使用方法：命令行模式输入 :NERDTree
" o 打开关闭文件或者目录
" t 在标签页中打开
" T 在后台标签页中打开
" ! 执行此文件 
" p 到上层目录
" P 到根目录
" K 到第一个节点
" J 到最后一个节点
" u 打开上层目录
" m 显示文件系统菜单（添加、删除、移动操作）
" ? 帮助
" q 关闭
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" {
"启用 omni 补全.
"自动补全 
"filetype plugin indent on
"set completeopt=longest,menu
" 
" "自动补全命令时候使用菜单式匹配列表 
"set wildmenu
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType java set omnifunc=javacomplete#Complet
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType mysql set omnifunc=mysqlcomplete#CompleteMYSQL
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" JSON.vim {
""configure: http://vim.wendal.net/scripts/script.php?script_id=1945
"au! BufRead,BufNewFile *.json set filetype=json
""autocmd FileType json set autoindent 
""autocmd FileType json set formatoptions=tcq2l 
""autocmd FileType json set textwidth=78 shiftwidth=2 
""autocmd FileType json set softtabstop=2 tabstop=8 
""autocmd FileType json set expandtab 
"autocmd FileType json set foldmethod=syntax 
""autocmd FileType json set foldmethod=marker
""autocmd FileType json set foldmethod=indent
""autocmd FileType json set foldmethod=expr
""autocmd FileType json set foldmethod=manual
""autocmd FileType json set foldmethod=diff
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" elzr/vim-json {
"au! BufRead,BufNewFile *.json set filetype=json
""autocmd FileType json set formatoptions=tcq2l 
"autocmd FileType json set foldmethod=syntax 
"let g:vim_json_syntax_conceal = 0
"""}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Yggdroot/indentLine {
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
"""}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" python {
"python代码只按缩进折叠
autocmd FileType python setlocal foldmethod=indent

""" pythoncomplete {
"python自动不全
autocmd FileType python set omnifunc=pythoncomplete#Complete
"""}

""" Pydiction {
"python auto complete
filetype plugin on
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
""defalut g:pydiction_menu_height == 15
let g:pydiction_menu_height = 20 

" 使用方法
" For example, typing:
"   raw<Tab>
" will bring up a menu of possibilities, such as:
"   raw_input(
"   raw_unicode_escape_decode(
" raw_unicode_escape_encode(
""" }

" python语法高亮 python.vim
" set filetype=python
" au BufNewFile,BufRead *.py,*.pyw setf python

"""}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" jaromero/vim-monokai-refined {
set t_Co=256
syntax on
colorscheme Monokai-Refined

""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" altercation/vim-colors-solarized {
"set t_Co=256
"syntax enable
"set background=dark
""set background=light
"colorscheme solarized

""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" pep8 {
"编写严格遵循PEP 8的代码
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 从 https://github.com/tomasr/dotfiles.git 中获得主题 {
"来自 https://github.com/tomasr/dotfiles/tree/master/.vim/colors
" $> git clone https://github.com/tomasr/dotfiles.git
" $> mkdir -p ~/.vim/colors
" $> cp -r dotfiles/.vim/colors/*.vim ~/.vim/colors
"set t_Co=256
"colorscheme earendel
"colorscheme gentooish
"colorscheme inkpot
"colorscheme jellybeans
"colorscheme liquidcarbon
"colorscheme moria
"colorscheme nu42dark
"colorscheme twilight
"colorscheme wombat
"colorscheme zenburn
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" flazz/vim-colorschemes {
"set t_Co=256
"colorscheme cthulhian
"colorscheme dark
"colorscheme github
"colorscheme neverness
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 状态栏 {
"set statusline=
"set statusline+=%7*\[%n]                                  "buffernr
"set statusline+=%1*\ %<%F\                                "File+path
"set statusline+=%2*\ %y\                                  "FileType
"set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
"set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
"set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
"set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
"set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
"set statusline+=%9*\ col:%03c\                            "Colnr
"set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" pydoc.vim {
" 使用方法
" :Pydoc <keyword>
" :PydocSearch <keyword>
" 光标停留在要查询的单词上，按键\pW查看单词的python帮助文档

" 将\pW键映射为K
"if &filetype=='python'
"map K \pW
"endif

""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" plasticboy/vim-markdown {
"关闭markdown文档的自动折叠
"let g:vim_markdown_folding_disabled=1
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" cscope {
" cscope
" 自动加载当前目录下的 cscope.out
if has("cscope")
    if filereadable("cscope.out")
        cscope add  cscope.out
    endif
endif
"""}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" DrawIt {
" DrawIt 操作命令：
" 在vim的普通模式下按下
" \di    启动
" \ds    关闭
"
" 在vim的visual
" block（可视块）模式下，进入可视块模式的方法是Ctrl-v组合键。选择一个矩形框，然后
" \b    矩形框
" \e    椭圆
"
" 不要进入可视模式！
" ^    上箭头
" \^    粗大上箭头
" v    下箭头
" \v    粗大下箭头
" >    右箭头
" \>    粗大右箭头
" <    左箭头
" \<    粗大左箭头
"
" PgUp    右上斜线
" PgDn    右下斜线
" End        左下斜线
" Home    左上斜线
"
"""}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" maksimr/vim-jsbeautify {
""" 美化代码，如json、javascript、html、css等
map <c-f> :call JsBeautify()<cr>
""" }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""帮助信息"""
"
" vundle 使用方法
"
" original repos on github
" github上的用户写的插件，使用这种用户名+repo名称的方式
" Bundle 'tpope/vim-fugitive'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" vimscripts的repo使用下面的格式，直接是插件名称
"
" non github reposo
" 非github的插件，可以直接使用其git地址
" Bundle 'git://git.wincent.com/command-t.git'
" ...
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" vundle主要就是上面这个四个命令，例如BundleInstall是全部重新安装，BundleInstall!则是更新
" 一般安装插件的流程为，先BundleSearch一个插件，然后在列表中选中，按i安装
" 安装完之后，在vimrc中，添加Bundle 'XXX'，使得bundle能够加载，这个插件，同时如果
" 需要配置这个插件，也是在vimrc中设置即可
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
