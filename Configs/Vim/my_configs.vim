set mouse=a
set number
set autoindent
set cindent
set noexpandtab

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug '42Paris/42header'

call plug#end()

" User name and mail on 42 intra
let g:user42 = 'Asventi'
let g:mail42 = 'asventi@student.42.fr'

