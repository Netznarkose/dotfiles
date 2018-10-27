#!/bin/bash
tig_branch=$1
tmux split-window -h "tig $1" ; tmux resize-pane -Z
