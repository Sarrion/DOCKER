set encoding=utf-8

set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = "\<space>"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" let g:vimspector_enable_mappings = 'HUMAN'
Plugin 'puremourning/vimspector'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

" SHORTCUTS
nnoremap <leader>m :set mouse=n<cr>
nnoremap <leader>N :set number<cr>

" VIMSPECTOR SHORTCUTS
nnoremap <leader>l :call vimspector#Launch()<cr>
nnoremap <leader>n :call vimspector#StepOver()<cr>
nnoremap <leader>c :call vimspector#Continue()<cr>
nnoremap <leader>s :call vimspector#StepInto()<cr>
nnoremap <leader>o :call vimspector#StepOut()<cr>
nnoremap <leader>b :call vimspector#ToggleBreakpoint()<cr>
nnoremap <leader>d :call vimspector#ClearBreakpoints()<cr>
" nnoremap <leader>w :call vimspector#AddWatch( expand( '<cexpr>' ) )<cr>
nnoremap <leader>w :call vimspector#AddWatch( '' )
nnoremap <leader>e :call vimspector#Evaluate( '' )
