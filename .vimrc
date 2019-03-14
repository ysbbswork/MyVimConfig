set nocompatible "be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic' " 语法检测工具 
Plugin 'scrooloose/nerdcommenter' "注释代码工具 ,cc注释当前行 ,cu 撤销注释当前行 ,cs sexily注释 ,cA 行尾注释，切换成输入模式 
Plugin 'scrooloose/nerdtree' "树状结构文件夹目录
Plugin 'majutsushi/tagbar' 
Plugin 'jiangmiao/auto-pairs' " 括号自动匹配
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
map <C-S> :w<CR>
syntax on "自动语法高亮"

"用浅色高亮当前行"
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

set smartindent "智能对齐"

set autoindent "自动对齐"

set confirm "在处理未保存或只读文件的时候，弹出确认框"

set tabstop=4 "tab键的宽度"
set softtabstop=4 "使得按退格键可以一次删掉4个空格"
set shiftwidth=4 "统一缩进为4"
set expandtab "不要用空格替代制表符"

set autochdir "自动切换当前目录位当前文件所在目录"

set number "显示行号"
set history=50  "历史纪录数"
set hlsearch "搜索时高亮被查找到的文本"
set incsearch "搜素高亮,搜索逐渐高亮"

set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存

set gdefault "行内替换“
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1 "编码设置”

set guifont=Menlo:h16:cANSI "设置字体“
set langmenu=zn_CN.UTF-8
set helplang=cn  "语言设置”

set ruler "在编辑过程中，在右下角显示光标位置的状态行“

set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 设置在状态行显示的信息

set showcmd "在状态行显示目前所执行的命令，未完成的指令片段也会显示出来"


set scrolloff=3 "光标移动到buffer的顶部和底部时保持3行的距离"
set showmatch "高亮显示对应的括号"
set matchtime=5 "对应括号高亮时间(单位是十分之一秒)"

set autowrite "在切换buffer时自动保存当前文件"

set wildmenu  "增强模式中的命令行自动完成操作"

set linespace=2 "字符间插入的像素行数目"
set whichwrap=b,s,<,>,[,] "开启normal 或visual模式下的backspace键空格键，左右方向键,insert或replace模式下的左方向键，右方向键的跳行功能"

filetype plugin indent on "分为三部分命令:file on,file plugin on,file indent on 分别是自动识别文件类型, 用用文件类型脚本,使用缩进定义文件"

set foldenable  "允许折叠"
set foldmethod=manual " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=3 " 设置折叠层数为
set foldclose=all " 设置为自动关闭折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" " 用空格键来开关折叠

set cursorline "突出显示当前行"
set magic  "设置魔术？神马东东"
set ignorecase "搜索忽略大小写"
filetype on "打开文件类型检测功能"
set background=dark
set t_Co=256   "256色"
set mouse=a  "允许鼠标"

" 配置nerdtree
let NERDTreeQuitOnOpen=0 "打开文件时关闭树
let NERDTreeShowBookmarks=0 "显示书签

" 配置nerdtree的快捷键
let mapleader = ","
map <leader>ne :NERDTreeToggle<CR>
map <leader>tl :TlistToggle<cr>
nnoremap <leader>ma :set mouse=a<cr>
nnoremap <leader>mu :set mouse=<cr>

" tagbar插件
nmap <leader>tb :TagbarToggle<CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

