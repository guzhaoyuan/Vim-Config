"去掉有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible

"使删除键能够跨行删除
set backspace=2

"显示行号
set number
"显示相对行号
set relativenumber

"在编辑过程中，在右下角显示光标位置的状态行
set ruler

"在行尾显示$
set list 
set listchars=tab:--

"自动换行显示
set wrap

"回车自动插入新行
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"使能鼠标选中
set mouse=a

"set pastetoggle=<F2>

set modeline
"高亮行列
set cursorline
set cursorcolumn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 设置tap的缩进空格
set tabstop=2

syntax on
"set syntax=whitespace

set autoread                " 自动重新加载外部修改内容
set autochdir               " 自动切换当前目录为当前文件所在的目录

set nolinebreak             " 在单词中间断行

set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

"显示匹配括号
set showmatch

"默认无备份
set nobackup
set nowritebackup

"在insert模式下能用删除键进行删除
set backspace=indent,eol,start
