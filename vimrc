let mapleader=" "

call plug#begin()
"""""  Ruby On Rails    
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

"""""  Nerdtree   
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"""""  Layout/ Color 
Plug 'flazz/vim-colorschemes' "color schema switcher
Plug 'junegunn/seoul256.vim' "color schema
Plug 'jpo/vim-railscasts-theme' "color schema
Plug 'itchyny/lightline.vim' " StatusLine

"""""  Editing        
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth' "This plugin adjusts 'shiftwidth' and 'expandtab' 
" Plug 'cohama/lexima.vim' "Auto close parentheses
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'

Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'


"""""  Git Fugitive  
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' "shows a git diff in the 'gutter'

"""""  Navigation   
" Use <c-j>, <c-k> or the arrow keys to navigate the result list.
" Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
Plug 'kien/ctrlp.vim' "ctrlp opens the fuzzyfinder
Plug 'christoomey/vim-tmux-navigator'

""""""  Testing

Plug 'thoughtbot/vim-rspec'
Plug 'christoomey/vim-tmux-runner'
call plug#end()  

"""""" Testing

let g:rspec_command = "VtrSendCommandToRunner! rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>




runtime macros/matchit.vim
set nocompatible
if has("autocmd")
  filetype indent plugin on
endif

"""""  Nerdtree   
nmap <leader>f :NERDTreeToggle<cr>

""""" Layout/ Color 
""" Linenumber
" http://stackoverflow.com/a/19033976/4958271
" Vim shows the absolute line number instead of 0, when both relativenumber and number are set
set relativenumber 
set number 

set cursorline "highlights current line
set cursorcolumn "highlights current column
set hlsearch "highlights search

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

""" Colorscheme
colorscheme railscasts 

""" Statusline
set laststatus=2 "makes Statusline permanent
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

"""""  Git Fugitive  
set diffopt+=vertical "opens Gdiff in vertical-split
autocmd QuickFixCmdPost *grep* cwindow "opens quickfix-window after any grep invocation

"""""  Git Commitmessages
autocmd Filetype gitcommit setlocal spell textwidth=72

"""""  Whatever 
set backspace=indent,eol,start "Solves the Backspace Problem
set nowrap
set noswapfile
set splitright
set splitbelow
set ignorecase
set mouse=a "http://unix.stackexchange.com/questions/139578/copy-paste-for-vim-is-not-working-when-mouse-set-mouse-a-is-on
set pastetoggle=<F2>
set lazyredraw "https://stackoverflow.com/questions/307148/vim-scrolling-slowly
set nocompatible
set timeoutlen=1000 ttimeoutlen=0
map <Leader>i mmgg=G`m 

"""""  Printing  
set printoptions=number:y "includes linenumbers :hardcopy 

"""""  Copy and Paste  
"this will reselect and re-yank any text that is pasted in visual mode
xnoremap p pgvy 

set clipboard=unnamed "copies visual selection to clipboard

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
set nocompatible
if has("autocmd")
  filetype indent plugin on
endif
