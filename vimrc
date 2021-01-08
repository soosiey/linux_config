"leader set
let mapleader = ","
"ArrowKeys bug
set nocompatible
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/colors
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'luochen1990/rainbow'
Plugin 'joonty/vim-do'
Plugin 'wkentaro/conque.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/a.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'c.vim'
Plugin 'klen/python-mode'
Plugin 'godlygeek/tabular'
"Plugin 'tmhedberg/SimpylFold'
try
   source ~/.myvimrc_vundle_plugins
catch
   " No such file? No problem; just ignore it
endtry

call vundle#end()            " required
filetype plugin indent on    " required


let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40
set wildignore+=.git\*,.hg\*,.svn\*,*.d,*.dbo,*.o,*.ti,*.a,*.so
set diffopt=filler,vertical

set backspace=indent,eol,start

" Line Numbers
set number

" 256-color terminal
set t_Co=256
colorscheme badwolf
syntax enable
let g:airline_theme='badwolf'
nnoremap <silent> <F9> :TagbarToggle<CR>
nnoremap <silent> <F8> :NERDTreeToggle<CR>
set hlsearch!
nnoremap <silent> <F3> :set hlsearch!<CR>
"Tabbing
set tabstop=4
set autoindent
set shiftwidth=4
set smartindent
set softtabstop=4
set expandtab
"show airline
set noshowmode
set laststatus=2
"GUI menu
set wildmenu

"Matching encapsulation
set showmatch

"Increased/highlighted search
set incsearch
set hlsearch
set ignorecase
set smartcase
set scrolloff=5
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set nowrap
set ttyfast
set mouse=a
"open vim for editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>v :vsplit
nnoremap <leader>sp :split
"from http://vimawesome.com/plugin/easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

"syntax
"pymode running
let g:pymode_python = 'python3'
let g:pymode_run_bind = '<leader>py'
let g:pymode_lint_checkers = ['pyflakes']
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

iabbrev adn and
iabbrev waht what
iabbrev Stirng String
iabbrev itn int
iabbrev sy Suhaas Yerapathi
vnoremap <leader>" <esc>`<i"<esc>`>a"

function! StripTrailingWhitespace()
   " Preparation: save last search, and cursor position.
   let _s=@/
   let l = line(".")
   let c = col(".")
   " do the business:
   %s/\s\+$//e
   " clean up: restore previous search history, and cursor position
   let @/=_s
   call cursor(l, c)
endfunction

autocmd FileType * autocmd BufWritePre <buffer> call StripTrailingWhitespace()
set background=dark
function! Cycle_numbering() abort
  if exists('+relativenumber')
    execute {
          \ '00': 'set relativenumber   | set number',
          \ '01': 'set norelativenumber | set number',
          \ '10': 'set norelativenumber | set nonumber',
          \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relative numbering, just toggle numbers on and off.
    set number!<CR>
  endif
endfunction

nnoremap <silent> <Leader>r :call Cycle_numbering()<CR>

"For parenthesis highlight
let g:rainbow_active = 1
"open the file to previous line number
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal! g'\"" | endif
endif
" Run any custom user vimrc setup last
try
   source ~/.myvimrc
catch
   " No such file? No problem; just ignore it
endtry
