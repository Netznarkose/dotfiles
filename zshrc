# Path to your oh-my-zsh installation.
export ZSH=/Users/max/.oh-my-zsh
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
bindkey '^u' kill-whole-line



# Vim-Mode Show-Status
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="refined"
# To Display the right colors/themes in tmux
# export TERM=xterm-256color
# [ -n "$TMUX" ] && export TERM=screen-256color

# bindkey -v # Use vi-mode in Your Shell https://danielmiessler.com/blog/enhancements-to-shell-and-vim-productivity/
# http://dougblack.io/words/zsh-vi-mode.html

#--------------------Aliase---------------------------#

# Commands
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool NO; killall Finder'
alias show='defaults write com.apple.finder AppleShowAllFiles -bool YES; killall Finder'
alias reload="source ~/.zshrc"
alias histgrep="history | grep"
# Open
alias leo="ruby ~/Documents/TerminalLeoMp3Parser/lib/terminal_leo_mp3_parser.rb"
alias wiki="ruby ~/Coding/ruby/wiki_max/lib/wiki_info_box_script.rb"
alias anki="open /Applications/'Anki 2'.app"
alias text="open /Applications/TextEdit.app"
alias work="sh ~/.tmux_settings.sh"
# Navigation
alias go="cd ~/Coding/ruby/RubyLearning/72CoreRuby/"
alias sample="cd ~/Coding/rails/hartl_maintzi03/sample_app" 
alias muse="cd ~/Coding/rails/muse" 
alias rail="cd ~/Coding/rails/" 
alias rub="cd ~/Coding/ruby/" 
alias glb="cd ~/Coding/rails/GLB" 
alias blog="cd ~/Coding/rails/blog" 
alias dot="cd ~/dotfiles" 
alias charts="cd ~/Coding/rails/web_charts" 
alias surf="cd ~/Coding/rails/teachsurfing/ts_backend" 
# Anything Else
alias ftp_max="ftp w00fceac@maximilianmaintz.com"
alias gen="~/Coding/bash/test_file_generator/generator.sh"
alias gitl="sh ~/.git_loglive.sh $1"
alias gitll="git --no-pager log --graph --pretty=oneline --abbrev-commit --decorate --all"
alias railss="rvm use ruby-2.0.0-p598; rails server"
alias now='date "+TIME: %H:%M:%S%nDATE: %d-%m-%y"'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, git-open)

# User configuration

# export PATH="$PATH:/Users/netznarkose/.rvm/gems/ruby-2.0.0-p598/bin:/Users/netznarkose/.rvm/gems/ruby-2.0.0-p598@global/bin:/Users/netznarkose/.rvm/rubies/ruby-2.0.0-p598/bin:/usr/local/bin:/Users/netznarkose/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/MacGPG2/bin"
export PATH=/usr/local/bin:$PATH
export EDITOR=vim
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Color Problem in Iterm2 https://github.com/altercation/solarized/issues/257
# check ~/.oh_my_zsh/iTerm2colors.sh
# source $ZSH/iTerm2colors.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
# Load RVM into a shell session *as a function*
