"vundle set-up
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Leting vundle handle itself
"required!
Bundle 'gmarik/vundle'

"My Bundles
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'

"Syntax and numbering
syntax on 
set number

"Setting tabs to a sane 4 spaces plus smart indent
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

"Getting backspace to semi-work in os x
set backspace=indent,eol,start
fixdel


