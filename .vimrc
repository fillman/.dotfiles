execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set cursorline     " highlight current line
set wildmenu       " visual autocomplete for command menu
set laststatus=2   " always show the status line
set t_Co=256       " number of terminal colors
set colorcolumn=80 " show vertical line

set expandtab     " tabs are spaces
set tabstop=2     " number of visual spaces per TAB
set shiftwidth=2

set splitright " split vertical panels to right
set splitbelow " split horizontal panels to bottom

set incsearch  " search as characters are entered
set hlsearch   " highlight matches
set ignorecase " ignore case when searching
set smartcase  " only match case when starting with capital letter

set backupdir=/tmp
set directory=/tmp

set backspace=2

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

:map Q <Nop>
:imap jj <Esc>

let mapleader=','

noremap <leader><space> :nohlsearch<CR>

set background=dark

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:airline_powerline_fonts=1

let g:inky_template_language = 'slim'

noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>p :CtrlP<CR>
