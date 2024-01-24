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
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

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
set nocursorline
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

" Markdown Preview Settings & Mappings
let g:mkdp_auto_start = 1
nnoremap <F9> :MarkdownPreview<CR>

" Window Splitting Mappings
nnoremap <F1> :Telescope find_files<CR>
nnoremap <F2> :Telescope live_grep<CR>
nnoremap <F3> :tabnew<CR>
nnoremap <F4> :vsplit<CR>

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

" Set up clipboard using xclip
if has('nvim')
  let g:clipboard = {
    \   'name': 'xclip',
    \   'copy': {
    \      '+': 'xclip -selection clipboard',
    \      '*': 'xclip -selection clipboard',
    \    },
    \   'paste': {
    \      '+': 'xclip -selection clipboard -o',
    \      '*': 'xclip -selection clipboard -o',
    \   },
    \   'cache_enabled': 0,
    \ }
endif

" Set the leader key to comma
let mapleader = ","

" Completeion Settings
inoremap <silent><expr> <C-Space> coc#refresh()
inoremap <silent><expr> <CR>      coc#_select_confirm()
inoremap <silent><expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
inoremap <silent><expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"

" Telescope Mappings
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fh :Telescope help_tags<CR>


