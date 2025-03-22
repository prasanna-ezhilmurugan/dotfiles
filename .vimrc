set nocompatible
filetype off
set shell=/usr/bin/fish
filetype plugin indent on

call plug#begin()

" List your plugins here "
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'preservim/nerdtree'
" Code Formatting Plugins "
Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
" Nerd Tree Plugin "
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Colorscheme Plugin "
Plug 'chriskempson/base16-vim'
" Utils "
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

call plug#end()

syntax on
" ColorScheme "
colorscheme base16-gruvbox-dark-soft
" Options "
set relativenumber
set number
set tabstop=2
set shiftwidth=2
set nowrap
set sidescroll=1
set termguicolors
set nohlsearch

let g:NERDCreateDefaultMappings = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1

" Remaps " 
let mapleader="\<space>"
nnoremap <C-e> :NERDTreeToggle<CR>

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,typescript,arduino AutoFormatBuffer clang-format
  autocmd FileType clojure AutoFormatBuffer cljstyle
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType elixir,eelixir,heex AutoFormatBuffer mixformat
  autocmd FileType fish AutoFormatBuffer fish_indent
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType haskell AutoFormatBuffer ormolu
  " Alternative for web languages: prettier
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType jsonnet AutoFormatBuffer jsonnetfmt
  autocmd FileType julia AutoFormatBuffer JuliaFormatter
  autocmd FileType kotlin AutoFormatBuffer ktfmt
  autocmd FileType lua AutoFormatBuffer luaformatterfiveone
  autocmd FileType markdown AutoFormatBuffer prettier
  autocmd FileType ocaml AutoFormatBuffer ocamlformat
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType ruby AutoFormatBuffer rubocop
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType swift AutoFormatBuffer swift-format
  autocmd FileType vue AutoFormatBuffer prettier
augroup END
