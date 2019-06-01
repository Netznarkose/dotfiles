export NVM_DIR=~/.nvm
export TERM=xterm-256color
source $(brew --prefix nvm)/nvm.sh
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

# Usefult history variables, explain later
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

function funk() {
  git checkout -b "$(date +%Y%m%d)_$1"
}

function go() {
  tmux has-session -t $1
  if [ $? == 0 ]
  then
    tmux switch-client -t $1
  else
    cd ~/Documents/code/brandslisten/"bl_$1"
  fi
}


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

# Alias
# vi evokes the build in vim-editor which does not ships with +clipboard 
alias vi=nvim
alias vim=nvim
# Commands
# alias tig="sh ~/dotfiles/tig.sh $1"
alias git='hub'
alias be='bundle exec'
alias bi='bundle install'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool NO; killall Finder'
alias show='defaults write com.apple.finder AppleShowAllFiles -bool YES; killall Finder'
alias reload="source ~/.zshrc"
alias histgrep="history | grep"
alias gitl="sh ~/dotfiles/git_loglive.sh $1"
alias set_envs="source ~/dotfiles/set_envs.sh $1"
alias dot="cd ~/dotfiles" 
alias dots="cd ~/dotfiles" 
alias leo="cd ~/Documents/code/TerminalLeoMp3Parser ; ruby lib/terminal_leo_mp3_parser.rb"
# brandslisten
alias brand="cd ~/Documents/code/brandslisten"
alias bl="cd ~/Documents/code/brandslisten/bl"
alias core="cd ~/Documents/code/brandslisten/bl-core-logic"
alias modular="cd ~/Documents/code/brandslisten/bl-modular-api"
alias bbo="cd ~/Documents/code/brandslisten/bl_bbo"
alias eon="cd ~/Documents/code/brandslisten/bl_eon"
alias az="cd ~/Documents/code/brandslisten/bl_az"
alias aok="cd ~/Documents/code/brandslisten/bl_aok"
alias ac="cd ~/Documents/code/brandslisten/bl_ac"
alias bywk="cd ~/Documents/code/brandslisten/bl_bywk"
alias um="cd ~/Documents/code/brandslisten/bl_unity_media"
alias wl="cd ~/Documents/code/brandslisten/white_label"
alias swagger="cd ~/Documents/code/brandslisten/api-swagger"
alias azch="cd ~/Documents/code/brandslisten/bl_azch"
alias shn="cd ~/Documents/code/brandslisten/bl_shn"
alias ed="cd ~/Documents/code/brandslisten/bl_ed"
alias hw="cd ~/Documents/code/brandslisten/bl_hw"
alias lol="cd ~/Documents/code/brandslisten/bl_lol"
alias ds="cd ~/Documents/code/brandslisten/bl_ds"
alias style="cd ~/Documents/code/brandslisten/bl_styleguide"
alias qv="cd ~/Documents/code/brandslisten/bl_qv"
alias bw="cd ~/Documents/code/brandslisten/bl_bw"
alias styleguide_bug='sed -i "" "/app-bundle/d" "$(bundle show bl_styleguide)/app/assets/stylesheets/bl_styleguide/main.scss"'
alias unseal_vault_sg="sh ~/Documents/code/brandslisten/bl_my_scripts/unseal_staging_vault.sh"
alias unseal_vault_pn="sh ~/Documents/code/brandslisten/bl_my_scripts/unseal_production_vault.sh"
alias status_vault_sg="sh ~/Documents/code/brandslisten/bl_my_scripts/status_staging_vault.sh"
alias status_vault_pn="sh ~/Documents/code/brandslisten/bl_my_scripts/status_production_vault.sh"

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
plugins=(
 git
 zsh-syntax-highlighting
 zsh-autosuggestions
 )

# User configuration

export PATH=/usr/local/bin:$PATH
export PATH=$PATH:~/bin
export EDITOR=vim
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

 # zsh-autosuggestions Iterm triggers an escaped sequence
bindkey '^[[[CE' autosuggest-accept # ctrl enter
bindkey '^[[[CB' forward-word       # shift enter


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
 
# export PATH="/usr/local/sbin:$PATH"
source ~/bl-openstack/openstackconf

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
