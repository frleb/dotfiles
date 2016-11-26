" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'


NeoBundle 'Shougo/neocomplete'


NeoBundle 'Tagbar'

" Syntax checking hacks for vim
NeoBundle 'scrooloose/syntastic'


" colorscheme
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" Load ~/.vim/settings/*.vim
let VimSettings = '~/.vim/settings'
for fpath in split(globpath(VimSettings, '*.vim'), '\n')
  exe 'source' fpath
endfor

