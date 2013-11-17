set nocompatible "what the heck is vi?

""Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Github Bundles
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-abolish'
Bundle 'kien/ctrlp.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-notes'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'myusuf3/numbers.vim'
Bundle 'sontek/rope-vim'
Bundle 'nvie/vim-flake8'
Bundle 'mileszs/ack.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'

set t_Co=256 "need more colourz
set number

filetype plugin indent on
filetype off

syntax enable

let g:solarized_termcolors = 256
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

set expandtab
set tabstop=4
set shiftwidth=4

set smartcase
set ignorecase

set number
set nowrap

"mouse is good
set mouse=a

" Highlight results as you come across them
set incsearch

" Highlight search results
set hlsearch

" Press Space to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"set foldmethod=indent
"set foldlevel=99

"Jump between splits with ctrl-hjkl
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

"Remap shift-jk to jump up and down pages
nmap <silent> <s-j> <c-d>
nmap <silent> <s-k> <c-u>

"backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup

"Highlight the current line with slighly grey bg
"hi CursorLine cterm=NONE ctermbg=233 guibg=gray guifg=white
hi CursorLine cterm=NONE ctermbg=016 guibg=gray guifg=white
set cursorline

"ctrl-p stuff
let g:ctrlp_clear_cache_on_exit = 0

set wildignore+=*/tmp/*,*.pyc,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|third_party)$'

"git grep the current word under cursor
nnoremap <silent> F :Ggrep <cword><CR>

"Grep in a quickfix
autocmd QuickFixCmdPost *grep* cwindow

"statusbar stuff
set laststatus=2

let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'

"highlight lines past 80 columns in length
"
hi OverLength ctermfg=096
match OverLength /\%>79v.\+/

"Ctrl-Y: Lint test for python
autocmd FileType python nnoremap <silent> <c-y> :call Flake8()<CR>

"Nerd Tree
map <C-n> :NERDTreeToggle<CR>

"so jumping around in snake-case-land isn't so annoying
"set iskeyword-=_

" Prevent Vim from clobbering the scrollback buffer.
" set t_ti= t_te=
" NOTE: looks too weird when I close/background

set title

"Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

"Line search in Ctrl-P
map <C-l> :CtrlPLine<CR>
