set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
" Bundle "davidhalter/jedi-vim"
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" syntax setting
syntax enable
syntax on

" basic setting
set nu
set backspace=2
set background=dark
set ruler
set cursorline
set cursorcolumn

" indentation setting
filetype plugin indent on
set ts=4
set sw=4
set expandtab
set autoindent

" replace all tabs with spaces
:%retab

autocmd BufNewFile *.py,*.sh exec ":call SetTitle()"
func SetTitle()
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call setline(2, "\# -*- encoding:utf-8 -*-")
    endif
    if &filetype == 'sh'
        call setline(1, "\#!/usr/bin/sh")
    endif
endfunc
