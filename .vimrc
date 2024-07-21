
" 语法高亮度显示
syntax on

"搜索匹配高亮
set hlsearch

set cuc
set cul
" 设置行号
set nu

"防止中文注释乱码
set fileencoding=utf-8
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936,big－5                    
set enc=utf-8
let &termencoding=&encoding

"设置字体
set guifont=Monospace\ 20

" 设置tab4个空格
set tabstop=4
set expandtab

"程序自动缩进时候空格数
set shiftwidth=4

"退格键一次删除4个空格
set softtabstop=4
autocmd FileType make set noexpandtab

" 在编辑过程中，在右下角显示光标位置的状态行
set ruler

" 搜索忽略大小写 
set ignorecase 

" vim使用自动对起，也就是把当前行的对起格式应用到下一行
set autoindent

" 依据上面的对起格式，智能的选择对起方式，对于类似C语言编写上很有用
set smartindent

" 在状态列显示目前所执行的指令
set showcmd

" 设置颜色主题
colorscheme desert

set nocompatible
set backspace=indent,eol,start


" Module top note information
:map <F5> 1GO<ESC>ggi// *********************************************************************************<cr><ESC>0d$i// Project Name : OSXXXX<cr><ESC>0d$i// Author       : yaojunhao<cr><ESC>0d$i// Website      : https://blog.csdn.net/weixin_40377195<cr><ESC>0d$i// Create Time  : <C-R>=strftime("%F")<CR><cr><ESC>0d$i// File Name    : .v<cr><ESC>0d$i// Module Name  :<cr><ESC>0d$i// Called By    :<cr><ESC>0d$i// Abstract     :<cr><ESC>0d$i//<cr><ESC>0d$i// <cr><ESC>0d$i// *********************************************************************************<cr><ESC>0d$i// Modification History:<cr><ESC>0d$i// Date         By              Version                 Change Description<cr><ESC>0d$i// -----------------------------------------------------------------------<cr><ESC>0d$i// <C-R>=strftime("%F")<CR>    Macro           1.0                     Original<cr><ESC>0d$i//  <cr><ESC>0d$i// *********************************************************************************<cr><ESC>0d$i


autocmd BufNewFile *.sv,*.svh exec ":call SetComment()" |normal 12Go

func SetComment()
  let author_name = split(system("whoami"),"")[0]
  let name = expand("%")
  let FILE_NAME=toupper(''.expand("%:r"))
  call setline(1,'/**************************')
  call setline(2,'')
  call setline(3,'    Filename  : '.expand("%"))
  call setline(4,'    Author    : '.author_name)
  call setline(5,'    Description : Verfication coding file')
  call setline(6,'    Creat Time  : '.strftime("%Y-%m-%d %H:%M:%S"))
  call setline(7,'    Lst Modify Time :'.strftime("%Y-%m-%d %H:%M:%S"))
  call setline(8,'')
  call setline(9,'**************************/')
  call setline(10,'`ifndef '.FILE_NAME.'__SV')
  call setline(11,'`define '.FILE_NAME.'__SV')
  call setline(12,'')
  call setline(13,'`endif')
endfunc

filetype off
set rtp+=/home/ICer/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'preservim/nerdtree'
    
call vundle#end()

filetype plugin indent on


"NERDTREE CONFIGURE
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

" 启动vim时自动打开NERDTree，并将光标放在Tree的Tag
"autocmd VimEnter * NERDTree

" 启动vim时自动打开NERDTree，并将光标放在vim打开的文件
" autocmd VimEnter * NERDTree | wincmd p

" 如果退出vim后只剩Tree的Tag的话，则自动退出Tree的Tag
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif






