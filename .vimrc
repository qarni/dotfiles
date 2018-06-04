" Key shortcuts
" ----------------------------------------------
"
" undo                              'u'
" redo                              'ctrl + r'
" select whole line                 'shift + v'
" delete                            'd'
" paste                             'p'
" mark block                        'ma'
" end mark block and delete         'd'a'
" close all tabs					'wqa'
" ----------------------------------------------

" don't attempt compatibility with vi
set nocompatible

" use Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
let path='~/.vim/bundle'
call vundle#begin()

" add all plugins here -------------------------------------------

" Install Vundle, bundle manager
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'

" Auto-close for ()/[]/{}
Plugin 'Townk/vim-autoclose'

" Syntax -- had to comment something out for this...go back and check - disabled
" because annoying issues
" Plugin 'vim-syntastic/syntastic'

" auto-complete plugin
" Plugin 'Valloric/YouCompleteMe'

" NERDTree file viewer
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Airline tab bar thingy
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" icons -- this works, but change the font cuz this is ugly...
Plugin 'ryanoasis/vim-devicons'

" Fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'

" highlights all trailing whitespace :StripWhitespace to remove all
Plugin 'ntpeters/vim-better-whitespace'

" git
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on
" ----------------------------------------------------------------------------

" highlighting
syntax on
" color scheme
:colorscheme moody

" map esc to ctrl space
"imap <C-space> <Esc>

" wrapping around
set whichwrap+=<,>,h,l,[,]

" indenting
set expandtab     " tabs are spaces
set tabstop=4       " num spaces per tab visually
set softtabstop=4   " num spaces per tab when editing
set shiftwidth=4
set autoindent
set textwidth=80

" allow mouse events
:set mouse=a

" line numbers
:set number

" make backspace work properly
set backspace=2

" visual autocomplete for command menu
set wildmenu

" highlight matching parenthesis-like chars
set showmatch

" tabs
" new tab
nnoremap <C-t>     :tabnew<CR>
" Ctrl-Left or Ctrl-Right to go to the previous or next tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
" Alt-Left or Alt-Right to move the current tab to the left or right
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" language specific stuff
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal shiftwidth=2 tabstop=2
autocmd Filetype eruby setlocal tabstop=2 shiftwidth=2
autocmd Filetype js setlocal tabstop=2 shiftwidth=2

" ctrl c ctrl v support
vmap <C-c> "+y
vmap <leader>p "+P

" NERDTree auto refresh
function! NERDTreeRefresh()
    if &filetype == "nerdtree"
        silent exe substitute(mapcheck("R"), "<CR>", "", "")
    endif
endfunction

autocmd! BufEnter * call NERDTreeRefresh()

" Ctrln to toggle NerdTree
map <C-n> :NERDTreeToggle<CR>
let NerdTreeMinimalUI = 1			" get rid of help on NerdTree
let NerdTreeDirArrows = 1
let NerdTreeAutoDeleteBuffer = 1	" delete buffer of a deleted file
let NerdTreeQuitOnOpen = 1			" close automatically when you open a file

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'	" match files top to bottom
let g:ctrlp_switch_buffer = 0					" open files in new buffer
let g:ctrlp_open_new_file = 't'

" font configurations to make devicons work
set guifont=Consolas\ Nerd\ Font\ Complete\ Mono\ Windows\ Compatible:h12
set encoding=utf-8

" Airline
let g:airline_theme="minimalist"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod=':t'

" Better whitespace settings
let g:better_whitespace_enabled=0
let g:strip_whitespace_on_save=1
