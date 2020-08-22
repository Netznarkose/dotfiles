call plug#begin()
"""""  Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

"""""  Layout/ Color 
Plug 'itchyny/lightline.vim' " StatusLine Plugin

"""""  Editing        
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth' "This plugin adjusts 'shiftwidth' and 'expandtab' 
" Plug 'cohama/lexima.vim' "Auto close parentheses
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'

"""""  Git Fugitive  
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' "shows a git diff in the 'gutter'

"""""  Navigation   
Plug 'kien/ctrlp.vim' "FuzzyFinder
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'jeetsukumaran/vim-buffergator'
call plug#end()  
