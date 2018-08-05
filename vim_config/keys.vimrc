let mapleader=" "
map <Leader>l :nohlsearch<CR>

" Indent whole buffer
map <C-i> mmgg=G`m 

" toggle split to full-screen with leader-d
map <C-u> :call MaximizeToggle()<CR>

map <C-m> <Plug>Commentary
