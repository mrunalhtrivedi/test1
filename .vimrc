call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
call plug#end()
autocmd VimEnter *
 \ if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
 \| PlugInstall | q
 \| endif


syntax on
colorscheme desert
autocmd Filetype gitcommit setlocal spell
set textwidth=72
set number
set showcmd
set cursorline
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
