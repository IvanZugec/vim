autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd FileType c set omnifunc=ccomplete#Complete
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

:imap <c-space> <c-x><c-o>


" configure Tag List
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40


" Set filetype detection on, load plugins and indent.
filetype plugin indent on

" Use vim defaults.
set nocompatible

" Tabs, Spaces and Indentation.
set expandtab " Use spaces for tabs.
set tabstop=2 " Number of spaces to use for tabs.
set shiftwidth=2 " Number of spaces to autoindent.
set softtabstop=2 " Number of spaces for a tab.
set autoindent " Set autoindenting on.

" Various.
set bs=2 " Backspace, this is the same as :set backspace=indent,eol,start.
set ruler " Show the cursor position.
set scrolloff=5 " Show 5 lines above/below the cursor when scrolling.
set number " Line numbers on.
set showcmd " Shows the command in the last line of the screen.
set autoread " Read files when they've been changed outside of Vim.
"set cursorline " Highlight current line, I found this slowed things.

" Bells and whistles.
set novisualbell
set noerrorbells
set t_vb=

set history=300 " Number of command lines stored in the history tables.

set title " Set the title in the console.

" Use matchtime and showmatch together.
set matchtime=2 " Time to show matching parent in 10ths of a sec.
set showmatch " Show matching parents.

" Backup.
set nobackup " Don't backup files.
set nowritebackup
set noswapfile

" Searching.
set hlsearch
"set incsearch
set ignorecase
set smartcase

"wrapping
:map <F5> :set nowrap! <CR>


set wildmode=longest,list " File and directory matching mode.

syntax on " Syntax highlighting on.

" Drupal command group, set the correct filetypes for Drupal files.
augroup drupal
  autocmd BufRead,BufNewFile *.module set filetype=php
  autocmd BufRead,BufNewFile *.theme set filetype=php
  autocmd BufRead,BufNewFile *.inc set filetype=php
  autocmd BufRead,BufNewFile *.install set filetype=php
  autocmd BufRead,BufNewFile *.info set filetype=php
  autocmd BufRead,BufNewFile *.engine set filetype=php
  autocmd BufRead,BufNewFile *.profile set filetype=php
  autocmd BufRead,BufNewFile *.test set filetype=php
augroup END

" Prevent help popping up catch <F1> instead of <ESC>.
:nmap <F1> <ESC>
:map <F1> <ESC>
:imap <F1> <ESC>

" Map keys to navigate tabs
:map <C-Left> :tabprevious<CR>
:map <C-Right> :tabnext<CR>

" autocmd VimEnter * NERDTree
" autocmd BufEnter * NERDTreeMirror

