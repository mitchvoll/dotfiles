"""""""""""""""""""""""""""""
" Mitch Vollebregt .vimrc profile
" Sept 29, 2015
"""""""""""""""""""""""""""""

"""""""""""""""""""""""""" 
" Vundle settings
""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdTree' 
"Plugin 'dracula/vim'
Plugin 'crusoexia/vim-dracula'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors' 
Plugin 'Auto-Pairs'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Bundle 'wakatime/vim-wakatime'
Plugin 'tpope/vim-fugitive' 
Bundle 'vim-ruby/vim-ruby'
"Plugin 'pangloss/vim-javascript'
"Bundle 'altercation/vim-colors-solarized'
Plugin 'mileszs/ack.vim'


"All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required

""""""""""""""""""""""""""
" Custom settings
""""""""""""""""""""""""""
" set regex to old engine for better ruby performance
set re=1

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_files = 25000
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" close buffer with \q
nnoremap <leader>q :bp<cr>:bd #<cr> 

" toggle spelling use \s
imap <Leader>s <C-o>:setlocal spell! spelllang=en_us<CR>
nmap <Leader>s :setlocal spell! spelllang=en_us<CR>

" start relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu 
  else
    set relativenumber
  endif
endfunc

nnoremap <C-b> :call NumberToggle()<cr>
:au FocusLost * :set number
:au FocusGained * :set relativenumber
" end relative numbering

" nerdtree settings
""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-t> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" General settings
"""""""""""""""""""""""""""
set timeoutlen=1000 "Improve speed
set ttimeoutlen=0 "Improve speed

set noswapfile "No swapfile

color dracula
"colorscheme dracula 
"colorscheme solarized
"set background=light
"colorscheme material-theme
syntax on  "Enables syntax highlighting for programming languages

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t' "only show filename in buffer
set laststatus=2
let g:tmuxline_powerline_separators = 0
let g:airline_powerline_fonts = 1

" Tab and shift tab cycle through buffers
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

set t_Co=256
set t_ut= "Fix issue with background of lines being different colour than screen background
set clipboard=unnamed "Copy paste across vim sessions"
set mouse=a  "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set cindent  "Automatically indents lines after opening a bracket in programming languages
set backspace=2  "This makes the backspace key function like it does in other programs.
set tabstop=2  "How much space Vim gives to a tab
set number  "Enables line numbering
set smarttab  "Improves tabbing
set shiftwidth=2  "Assists code formatting
set expandtab
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:· "list bad spaces

"Language specific indents
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype js setlocal ts=2 sts=2 sw=2

"setlocal spell spelllang=en_us "Spellcheck" 
set foldmethod=manual  "Lets you hide sections of code
"--- The following adds a sweet menu, press F4 to use it.
"source $VIMRUNTIME/menu.vim
"set wildmenu
"set cpo-=<
"set wcm=<c-z>
"map <8> :emenu <c-z>

