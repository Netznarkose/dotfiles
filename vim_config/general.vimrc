" General 
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
set nocompatible
" set timeoutlen=0 ttimeoutlen=0
set timeoutlen=0 
set ttimeoutlen=0


" Appearance 
colorscheme railscasts 

" always open quickfix in full-width
au FileType qf wincmd J

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =


" Git
autocmd Filetype gitcommit setlocal spell textwidth=72
" Opens Quickfix after any grep invocation
autocmd QuickFixCmdPost *grep* cwindow 

" Key-Bindings
" Indent whole buffer
map <C-y> mmgg=G`m 
" make split to full-screen with ctrl-u
nnoremap <silent> <C-U> :ZoomToggle<CR>
nnoremap tn :tabnew<Space>
nnoremap tl :tabnext<CR>
nnoremap th :tabprevious<CR>
nmap 9 :NERDTreeToggle<CR>
nmap 0 :NERDTreeFind<CR>
" Toggle-Comments
vmap m <plug>Commentary

let g:NERDTreeWinSize=60

" Copy and Paste  
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
if has("autocmd")
  filetype indent plugin on
endif

" auto-reload vimrc if changes are written
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
" Zoom / Restore window.
"
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
