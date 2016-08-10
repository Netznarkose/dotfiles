#!/bin/sh 
tmux new-session -d 
tmux split-window -h -p 40 
tmux split-window -v -p 20
tmux select-pane -t 0
tmux -2 attach-session -d 
