"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

""" Plugins Condig {

Plugin 'DrawIt'                     " Ascii drawing plugin: lines, ellipses, arrows, fills, and more!
Plugin 'taglist.vim'                " Source code browser
Plugin 'DoxygenToolkit.vim'         " Simplify Doxygen documentation in C, C++, Python.
Plugin 'Yggdroot/indentLine'        " Displaying thin vertical lines at each indentation level for code indented with spaces.
Plugin 'scrooloose/nerdcommenter'   " Vim plugin for intensely orgasmic commenting
Plugin 'scrooloose/nerdtree'        " A tree explorer plugin for vim.
Plugin 'majutsushi/tagbar'          " Tagbar is a plugin for browsing the tags of source code files.
"Plugin 'kien/ctrlp.vim'             " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
"Plugin 'tpope/vim-fugitive'         " A Git wrapper so awesome
"Plugin 'scrooloose/syntastic'       "Syntax checking hacks for vim TODO
Plugin 'wincent/command-t'          " Fast file navigation for VIM


""" Color Schemes [
Plugin 'nextkitt/vim-monokai-refined'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fatih/molokai'
"""]

""" Go [
Plugin 'fatih/vim-go'
"""]

""" Markdown [
Plugin 'plasticboy/vim-markdown'
"Plugin 'tpope/vim-markdown'
"""]


"" Refer:
" - http://vim-scripts.org/vim/scripts.html
" - https://github.com/vgod/vimrc
" - https://github.com/humiaozuzu/dot-vimrc
" - https://github.com/amix/vimrc
"""}





" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" } <= Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax highlighting
syntax enable
syntax on

set imcmdline
set modeline


""" indent {
set autoindent
set cindent
set smartindent
"""}

""" tab {
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

au FileType Makefile set noexpandtab
"""}

""" search {
"set ignorecase     " Ignore case when searching
"set smartcase      " When searching try to be smart about cases 
"set incsearch      " Makes search act like search in modern browsers
"set nowrapscan     "
set hlsearch		" Highlight search results
"""}

""" match {
set showmatch		" Cursor shows matching bracket
"""}


""" fold {
set foldmethod=syntax
set foldlevel=100
"""}

""" filetype {
filetype on         " Enable filetype detection
filetype plugin on  " Enable filetype-specific indenting
filetype indent on  " Enable filetype-specific plugins
"""}

""" encoding {
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,gb2312,gbk,gb18030,ucs-bom,cp936,big5,euc-jp,euc-kr,latin1
"set fileencoding=utf-8
" Use Unix as the standard file type
set ffs=unix,dos,mac
"""}

""" backspace {
set backspace=indent,eol,start      " More powerful backspacing
" Configure backspace so it acts as it should act
"set backspace=eol,start,indent
set whichwrap+=<,>,h,l
"""}


""" View {
set number          " Show line numbers
set cmdheight=1     " Height of the command bar
set laststatus=2    " Use 2 lines for the status bar
set shortmess=atI   " 
set showcmd         " Show typed command in status bar
set ruler           " Show the cursor position all the time
set showmode        " Show current mode
set showfulltag     " ?
"set scrolloff=0    " 5 lines above/below cursor when scrolling

" Disable sound on errors
set noerrorbells
set novisualbell
set vb t_vb= 

"""}

""" cursor {
"Restore cursor to file position in previous editing session
"set viminfo='10,\"100,:20,%,n~/.viminfo
"au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"""}

""" colorscheme {
set t_Co=256            " 256 color mode
"set cursorline         " Highlight current line
"set cursorcolumn       " 
"set background=light   " 
"set background=dark    " 
"set mouse=a            " 

"colorscheme solarized
"colorscheme elflord
"colorscheme darkblue
"colorscheme evening
"colorscheme murphy
"colorscheme torte
"colorscheme desert

"set colorcolumn=80
"""}

"""  wildmenu {
" Turn on the WiLd menu
set wildmenu
set wildmode=longest:full,full
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif
"""}

""" other {
set history=1000  " Sets how many lines of history VIM has to remember
"set autoread      " Set to auto read when a file is changed from the outside

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

"""}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" } <= General 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Module {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" cscope [
 "autoload cscope.out
if v:version > 702
    if has("cscope")
        if filereadable("cscope.out")
            cscope add  cscope.out
        endif
    endif
endif
"""]

""" TODO [ " TODO
" Enable omni completion. (Ctrl-X Ctrl-O)
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
"""]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" } <= Module
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Config {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" taglist.vim [
set tags=tags                       "
"set autochdir                       "
let Tlist_Show_One_File=1           " Show tags for the current buffer only.
let Tlist_Exit_OnlyWindow=1         " Close Vim if the taglist is the only window.
"let Tlist_Use_Right_Window=1        " Place the taglist window on the right side.
let Tlist_Use_Left_Window=1        " Place the taglist window on the right side.
let Tlist_WinWidth=30               " Vertically split taglist window width.
"let Tlist_Use_Horiz_Window=1        " Use a horizontally split window for the taglist window.
"let Tlist_WinHeight=10              " Horizontally split taglist window height.
"let Tlist_Close_On_Select=1         " Close the taglist window when a file or tag is selected.
"let Tlist_Auto_Open=1               " Open the taglist window when Vim starts.
"let Tlist_Use_SingleClick=1         " Single click on a tag jumps to it.
let Tlist_GainFocus_On_ToggleOpen=1 " Jump to taglist window on open.
"""]

""" Yggdroot/indentLine [
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
let g:indentLine_enabled = 1
"""]

""" scrooloose/nerdcommenter [ " TODO
let g:NERDSpaceDelims=1                 " Add spaces after comment delimiters by default
"nmap <D-/> :NERDComToggleComment<cr>    " TODO
let NERDCompactSexyComs=1               " Use compact syntax for prettified multi-line comments
"""]

""" scrooloose/nerdtree [ " TODO
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"
"""]

""" majutsushi/tagbar [ " TODO
let g:tagbar_right=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1 
let g:tagbar_sort = 0 
let g:tagbar_compact = 1 
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
"""]

""" kien/ctrlp.vim [
"set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
"let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
"""]

""" wincent/command-t[
let g:CommandTMaxHeight = 15
"""]

""" nextkitt/vim-monokai-refined [
"set t_Co=256
"syntax on
colorscheme Monokai-Refined
"""]

""" altercation/vim-colors-solarized [
"set t_Co=256
"syntax on
"set background=dark
"set background=light
"colorscheme solarized
"""]

""" fatih/molokai [
"colorscheme molokai
"""]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" } <= Plugin Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

