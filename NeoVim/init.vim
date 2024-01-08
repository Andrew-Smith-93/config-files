" Enable line numbers
set number
set relativenumber

" Initialize Plugin Manager
call plug#begin()

" Plugin Definitions
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'github/copilot.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'ThePrimeagen/vim-be-good'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

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
set showmatch

" Airline Configuration
set background=dark

" Transparent Background
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi Folded guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi SpecialKey guibg=NONE ctermbg=NONE
hi VertSplit guibg=NONE ctermbg=NONE

" NERDTree Mappings
nnoremap <TAB> :NERDTreeToggle<CR>

" Disable Arrow Keys in Normal Mode
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

" Compile and Run Shortcut
nnoremap <F5> :w<CR>:!g++ % -o %< && echo 'Compilation Successful'<CR>

" Window Splitting Mappings
nnoremap <F2> :split<CR>
nnoremap <F3> :terminal<CR>
noremap <F4> :tabnew<CR>
nnoremap <F6> :vsplit<CR>

" Navigation in Splits
nnoremap <Up> <C-W>k
nnoremap <Down> <C-W>j
nnoremap <Left> <C-W>h
nnoremap <Right> <C-W>l

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

" NERDTree Configuration
let g:NERDTreeDirArrowExpandable="+" 
let g:NERDTreeDirArrowCollapsible="~"

" DadBod Configuration
let g:db_ui_save_location = '~/.config/nvim/db_ui+_connections'
" DBUI custom execute mapping
nnoremap <C-e><C-e> :DBUIExecuteQuery<CR>

" Clipboard Configuration
set clipboard=unnamedplus

