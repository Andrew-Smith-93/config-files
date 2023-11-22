:set number
:set relativenumber

call plug#begin()

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/github/copilot.vim'
Plug 'https://github.com/vim-airline/vim-airline-themes'

set encoding=UTF-8

call plug#end()

" Basic Settings
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set autoindent
set cursorline


" NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Mappings
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Airline
:colorscheme jellybeans
:set background=dark

:let g:airline_powerline_fonts = 1
:let g:airline_theme='jellybeans'

" NERDTree
let g:NERDTreeDirArrowExpandable="+" 
let g:NERDTreeDirArrowCollapsible="~"
