call plug#begin()
"""""  Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

"""""  StatusLine 
Plug 'itchyny/lightline.vim'

"""""  Editing        
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth' "This plugin adjusts 'shiftwidth' and 'expandtab' 
" Plug 'cohama/lexima.vim' "Auto close parentheses
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'

"""""  Navigation   
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'

"""""  Search   
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim' "FuzzyFinder

"""""  Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' "shows a git diff in the 'gutter'
call plug#end()  

colorscheme railscasts 

" SET
set number relativenumber         " Absolute linenumber at cursor else relativenumbers
set cursorline cursorcolumn       " Highlight cursor line & column
set incsearch hlsearch ignorecase " Highlight search-results ignore case
set history=1000                  " Set number of Command-Records
set backspace=indent,eol,start    " Solves the Backspace Problem
set nowrap
set noswapfile
set splitright splitbelow
set mouse=a                       " Enable mouse support for all modes
set lazyredraw                    " https://stackoverflow.com/questions/307148/vim-scrolling-slowly
set timeoutlen=200 ttimeoutlen=0
set noshowmode                    " Because lightline-plugin shows modes already
set clipboard=unnamed             " Copy visual selection to clipboard
set diffopt+=vertical             " Vim-fugitive: open Gdiff in vertical-split
set laststatus=2                  " Always show statusline

" LET
let mapleader = " "
let NERDTreeQuitOnOpen=1          " Close NERDTree after opening a file
let g:NERDTreeWinSize=60          " Give NERDTree a width of 60px
let g:lightline = {
                  \ 'colorscheme': 'default',
                  \ 'active': {
                  \ 'left': [ [ 'mode', 'paste' ],
                  \           [ 'fugitive', 'filename', 'modified' ] ],
                  \ 'right': [ ]
                  \ },
                  \ 'inactive': {
                  \ 'left': [ [ 'mode', 'paste' ],
                  \           [ 'fugitive', 'filename', 'modified' ] ],
                  \ 'right': [ ]
                  \ },
                  \ }


" MAP
nnoremap <leader><space> :noh<cr>
nnoremap <leader>t :!rake test TEST=%<cr>
map <leader>r :execute "source " . $MYVIMRC<CR>
nmap <leader>f :NERDTreeToggle<CR>
nmap <leader>g :NERDTreeFind<CR>
vmap m <plug>Commentary
" Do auto-closing brackets with vanilla-vim
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O



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






" my-commands
command Rubo !rubocop --auto-correct % <cr>

""" paste from clipboard without explicitly turning paste mode on/off**
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" ** https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
" remove trailing whitespace automatically
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
runtime macros/matchit.vim
if has("autocmd")
  filetype indent plugin on
endif
