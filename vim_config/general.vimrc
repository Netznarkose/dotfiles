"" Vim Config

set relativenumber " Vim shows the absolute line number instead of 0, ...
set number         " ... when both relativenumber and number are set
set cursorline     "Highlights current Line
set cursorcolumn   "Highlights current Column
set hlsearch       "Highlights Search
set incsearch      "Highlights first Search-Result while typing
set history=1000   "Sets number of Command-Records
set backspace=indent,eol,start "Solves the Backspace Problem
set nowrap
set noswapfile
set splitright
set splitbelow
set ignorecase
set mouse=a "http://unix.stackexchange.com/questions/139578/copy-paste-for-vim-is-not-working-when-mouse-set-mouse-a-is-on
set lazyredraw "https://stackoverflow.com/questions/307148/vim-scrolling-slowly
set timeoutlen=200 ttimeoutlen=0
set noshowmode     "Because I use lightline to show modes https://github.com/itchyny/lightline.vim
let mapleader = " "
nnoremap <leader><space> :noh<cr>
nnoremap <leader>t :!rake test TEST=%<cr>
map <leader>r :execute "source " . $MYVIMRC<CR>

" always open quickfix in full-width
au FileType qf wincmd J

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Limit Git commit-messages to 72 chars
autocmd Filetype gitcommit setlocal spell textwidth=72

" Opens Quickfix after any grep invocation
autocmd QuickFixCmdPost *grep* cwindow 

" Reselect and re-yank any text that is pasted in visual mode
xnoremap p pgvy 

" Copy visual selection to clipboard
set clipboard=unnamed 


"" Mappings

nmap <C-y> :NERDTreeToggle<CR>
nmap <C-u> :NERDTreeFind<CR>
vmap m <plug>Commentary


"" Plugin Config

" vim-buffergator
let g:buffergator_viewport_split_policy = "B"
" let g:buffergator_suppress_keymaps = 1
" " Open Buggergator with :Ls
" command Ls BuffergatorToggle 


" nerdtree
" Close after selecting a file
let NERDTreeQuitOnOpen=1 
 " Make Window 60 px
let g:NERDTreeWinSize=60

" vim-fugitive
set diffopt+=vertical "opens Gdiff in vertical-split

" vim-colorschemes
colorscheme railscasts 

" my-commands
command Rubo !rubocop --auto-correct % <cr>
