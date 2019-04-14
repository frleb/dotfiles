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

" lean & mean status/tabline for vim that's light as air
NeoBundle 'vim-airline/vim-airline'
" A collection of themes for vim-airline
NeoBundle 'vim-airline/vim-airline-themes'
"let g:airline#extensions#tabline#enabled = 1

NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/context_filetype.vim'

NeoBundle 'Tagbar'

" fugitive.vim: a Git wrapper so awesome, it should be illegal
NeoBundle 'tpope/vim-fugitive'

" Syntax checking hacks for vim
NeoBundle 'scrooloose/syntastic'


" colorscheme
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'


NeoBundle 'editorconfig/editorconfig-vim'


" Vim files for editing Salt files
NeoBundle 'saltstack/salt-vim'

NeoBundleLazy 'Glench/Vim-Jinja2-Syntax', {
\   'filetypes': ['jinja2', 'j2', 'jinja']
\ }

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


" Show line numbers
set number
