execute pathogen#infect()

"去掉有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible

"使删除键能够跨行删除
set backspace=2

"光标在窗口上下边界时距离边界7行即开始滚屏
set so=7

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

"鼠标支持
if has('mouse')
    set mouse=a
    "set selection=exclusive
    set selectmode=mouse,key
    set nomousehide
endif

" 在搜索的时候忽略大小写
set smartcase
set ignorecase

"粘贴的时候启动粘贴模式，防止换行爆炸
set pastetoggle=<F10>

set modeline
"高亮行列
set cursorline
set cursorcolumn
"取消默认下划线，并且将CursorLine背景色改为浅白色
"hi CursorLine cterm=none
"highlight CursorLine ctermbg=240
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

"显示文件路径
set statusline+=%F

"setting ctrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

"auto open nerdtree on starting vim
autocmd vimenter * NERDTree
" Go to previous (last accessed) window
autocmd VimEnter * wincmd p
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"setting for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

