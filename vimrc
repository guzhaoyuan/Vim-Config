set nocompatible
set backspace=2
set number
set relativenumber

"在编辑过程中，在右下角显示光标位置的状态行
set ruler

"在行尾显示$
"set list

"自动换行显示
set wrap

"回车自动插入新行
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"使能鼠标选中
set mouse=a

"set pastetoggle=<F2>

"高亮行列
set cursorline
set cursorcolumn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 设置tap的缩进空格
set tabstop=2

syntax on
"set syntax=whitespace
