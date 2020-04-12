" config {{{
set autoindent smartindent
set autoread
set background=dark
set cmdheight=2
set cursorline
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
set scrolloff=13
set printfont=Courier:h7
set printoptions=number:y

autocmd BufWritePre * :%s/\s\+$//e
au BufNewFile,BufRead *.code-workspace set filetype=json
au BufNewFile,BufRead *.dtrace set filetype=dtrace
" }}}

" plugins {{{ {{{
call plug#begin('~/.config/nvim/plugs')
Plug 'lifepillar/vim-solarized8'
Plug '/usr/local/opt/fzf'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'cespare/vim-toml'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'mengelbrecht/lightline-bufferline'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'alaviss/nim.nvim'
call plug#end()
" }}}

"" fzf {{{
map ; :Files<CR>
" }}}

"" deoplete {{{
let g:deoplete#enable_at_startup = 1
" }}}

"" Lignline {{{
let g:lightline = { 'active': {
    \   'left': [['mode', 'paste' ], ['gitbranch', 'readonly', 'filename', 'modified']],
    \   'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']] } }
let g:lightline.tabline = { 'left': [ ['buffers'] ] }
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
" }}}

"" NERDTree {{{
map <F7> :NERDTreeToggle<CR>
" }}}

"" Palenight {{{
" }}}

"" TagBar {{{
nmap <F8> :TagbarToggle<CR>
" }}}

"" Rainbow {{{
let g:rainbow_active = 1
" }}} }}}

" color theme {{{
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

let g:lightline.colorscheme = 'solarized'
colorscheme solarized8
" }}}

" vim: foldmethod=marker

