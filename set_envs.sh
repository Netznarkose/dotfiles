client=$1

eval tmux setenv RAILS_ENV development 
eval tmux setenv DB_PASSWORD nopassword 
eval tmux setenv DB_HOST 127.0.0.1 
eval tmux setenv DB_NAME $client 
eval tmux setenv HOST localhost 
eval tmux setenv BL_SEARCH_IDX_PREFIX bl 
eval tmux setenv BL_CLIENT_ABBR $client

export RAILS_ENV=development 
export DB_PASSWORD=nopassword 
export DB_HOST=127.0.0.1 
export DB_NAME=$client 
export HOST=localhost 
export BL_SEARCH_IDX_PREFIX=$client 
export BL_CLIENT_ABBR=$client
