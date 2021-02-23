"""""""""""""""""""""""""""""
" Mitch Vollebregt .vimrc profile
" Sept 29, 2015
"""""""""""""""""""""""""""""

" Dependencies
" vim-plug https://github.com/junegunn/vim-plug
" fzf https://github.com/junegunn/fzf
" ag https://github.com/ggreer/the_silver_searcher

""""""""""""""""""""""""""
" Plug settings
""""""""""""""""""""""""""
set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdTree'
Plug 'crusoexia/vim-dracula'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'vim-ruby/vim-ruby'
Plug 'mileszs/ack.vim'
Plug 'posva/vim-vue'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rails'
Plug 'romainl/vim-qf'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jparise/vim-graphql'

call plug#end()


""""""""""""""""""""""""""
" Custom settings
""""""""""""""""""""""""""
" fzf searching settings
nmap <C-p> :GFiles<CR>
nmap <C-o> :Buffers<CR>

nmap <C-_> :Ag <CR>
nmap <silent> <C-f> :Ag <C-R><C-W><CR>

nmap <C-h> :History

let g:fzf_layout = { 'down': '~20%' }
let g:fzf_preview_window = 'right:40%'

" set regex to old engine for better ruby performance
set re=1

" ctrlp
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_max_files = 25000
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" close buffer with \q
nmap <leader>q :bp<cr>:bd #<cr> 

" toggle git gutter with \g
nmap <leader>g :GitGutterToggle<cr>

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
color dracula
"colorscheme material-theme
syntax on  "Enables syntax highlighting for programming languages

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t' "only show filename in buffer
set laststatus=2
let g:tmuxline_powerline_separators = 0
let g:airline_powerline_fonts = 1

" Tab and shift tab cycle through buffers
nmap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nmap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

set timeoutlen=1000 "Improve speed
set ttimeoutlen=0 "Improve speed
set noswapfile "No swapfile
set t_Co=256
set t_ut= "Fix issue with background of lines being different colour than screen background
set clipboard=unnamed "Copy paste across vim sessions"
set mouse=a  "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set cindent  "Automatically indents lines after opening a bracket in programming languages
set number  "Enables line numbering
set smarttab  "Improves tabbing
set shiftwidth=2  "Assists code formatting
set expandtab
set backspace=2  "This makes the backspace key function like it does in other programs.
set tabstop=2  "How much space Vim gives to a tab
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:· "list bad spaces
set hidden "Maintain buffer data to allow undo after switching buffers
set smartcase "Search case sensitive and fallback on insensitive"
set hlsearch "Highlight while searching
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"Language specific indents
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype js setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4

"Language specific style
au BufReadPost *.tsx set syntax=javascript
au BufReadPost *.ts set syntax=javascript

"--- The following adds a sweet menu, press F4 to use it.
"source $VIMRUNTIME/menu.vim
"set wildmenu
"set cpo-=<
"set wcm=<c-z>
"map <8> :emenu <c-z>

