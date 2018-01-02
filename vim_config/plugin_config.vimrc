" thoughtbot/vim-rspec

let g:rspec_command = "VtrSendCommandToRunner! rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" jeetsukumaran/vim-buffergator

noremap <leader>k :BuffergatorToggle<CR>
let g:buffergator_viewport_split_policy = "B"
" don't set up your crazy default keymappings
let g:buffergator_suppress_keymaps = 1


" scrooloose/nerdtree
let NERDTreeQuitOnOpen=1 " Close NERDTree after selecting a file

" tpope/vim-fugitive
  
set diffopt+=vertical "opens Gdiff in vertical-split

" flazz/vim-colorschemes/jpo/vim-railscasts-theme
colorscheme railscasts 

