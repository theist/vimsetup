runtime bundle/pathogen/autoload/pathogen.vim

call pathogen#infect()
call pathogen#helptags()

colorscheme torte
syntax on

:highlight Normal guibg=Black guifg=White
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

if has("autocmd")
  filetype indent on
endif

filetype plugin indent on

"search stuff
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch

"tabstuff
set tabstop=2
set shiftwidth=2
set cindent
set shiftround
set expandtab
set autoindent
set smarttab

"ui config
set autowrite
set hidden
set history=1000
set number
set title
set scrolloff=4
set laststatus=2
set nocompatible
set ruler
set hlsearch

"whitespace highlight
highlight RedundantWhitespace ctermbg=red guibg=red
match RedundantWhitespace /\s\+$\| \+\ze\t/

autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

noremap <C-a> :CommandT<CR>
nnoremap <C-l> :TagbarToggle<CR>

