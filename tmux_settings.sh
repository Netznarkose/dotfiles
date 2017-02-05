#!/bin/sh 
tmux new-session -d 
tmux split-window -h -p 40 
tmux rename-window Git 
tmux new-window
tmux split-window -v -p 20
tmux rename-window Ruby 
tmux select-window -t 0
tmux select-pane -t 1

tmux -2 attach-session -d 
