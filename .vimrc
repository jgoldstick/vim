set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle -- required!
Plugin 'gmarik/Vundle.vim'

" The bundles you install will be listed here

" vim-airline status line from github
Plugin 'bling/vim-airline'

" git from within vim
Plugin 'tpope/vim-fugitive'

" python mode
Plugin 'klen/python-mode'

call vundle#end()
filetype plugin indent on

" The rest of your config follows here

augroup vimrc_autocmds
    autocmd!
        " highlight characters past column 120
        autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType python match Excess /\%120v.*/
        autocmd FileType python set nowrap
        augroup END


set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
syntax on
set laststatus=2
set encoding=utf-8
set t_Co=256
set number
" let g:Powerline_symbols = 'fancy'
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly
"
" remove trailing spaces before saving
au BufWritePre *.py :%s/\s\+$//e


