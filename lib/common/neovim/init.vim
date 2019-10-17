" config
set autoindent smartindent
set autoread
set cmdheight=2
set expandtab
set foldmethod=syntax
set incsearch
set laststatus=2
set lazyredraw
set number
set relativenumber
set shiftwidth=4
set showmatch
set smarttab
set softtabstop=4
set tabstop=4

autocmd BufWritePre * :%s/\s\+$//e


" plugins
call plug#begin('~/.config/nvim/plugs')
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

"" Lignline
let g:lightline = { 'active': { 'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
            \                   'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']] } }

"" NERDTree
map <C-n> :NERDTreeToggle<CR>

