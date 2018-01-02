let mapleader=" "
map <Leader>l :nohlsearch<CR>
" Nerdtree   
nmap <leader>f :NERDTreeToggle<cr>

" Indent whole buffer
map <Leader>i mmgg=G`m 

" toggle split to full-screen with leader-d
nnoremap <leader>d :call MaximizeToggle()<CR>
