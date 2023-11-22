" Enable line numbers
set number
set relativenumber

" Initialize Plugin Manager
call plug#begin()

" Plugin Definitions
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'github/copilot.vim'
Plug 'vim-airline/vim-airline-themes'

" End Plugin Initialization
call plug#end()

" Basic Settings
set encoding=UTF-8
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set autoindent
set cursorline

" NERDTree Mappings
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-m> :NERDTreeToggle<CR>

" Disable Arrow Keys in Normal Mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Compile and Run Shortcut
nnoremap <F5> :w<CR>:!gcc % -o %< && ./%<<CR>

" Window Splitting Mappings
nnoremap <C-h> :split<CR>
nnoremap <C-v> :vsplit<CR>
nnoremap <C-n> :tabnew<CR>

" Navigation in Splits
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h

" Resize Splits
nnoremap <C-Up> :resize +2<CR>
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Left> :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

" Disable Arrow Keys in Insert Mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Terminal Mappings
tnoremap <Esc> <C-\><C-n>
nnoremap <C-t> :terminal<CR>

" Airline Configuration
colorscheme jellybeans
set background=dark

let g:airline_powerline_fonts = 1
let g:airline_theme='jellybeans'

" NERDTree Configuration
let g:NERDTreeDirArrowExpandable="+" 
let g:NERDTreeDirArrowCollapsible="~"
