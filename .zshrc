source ~/.bash_profile

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster-tom"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# fix git completion
zstyle ':completion:*:*:git:*' script /usr/local/etc/bash_completion.d/git-completion.bash

source $ZSH/oh-my-zsh.sh

alias ls='ls -GFh'

alias gs='git status'
alias gg='git grep'
alias ga='git add'
alias gap='git add -p'
alias gd='git diff'
alias gfind='git ls-files'
alias gsu='git submodule update'
alias gdh='git diff HEAD^'

alias cls='clear && ls'

alias ez='vim ~/.zshrc'
alias sz='source ~/.zshrc'

#Use badass 256 color xterm
export TERM=xterm-256color

#initialize keychain
kinit --keychain

alias ppj='python -m json.tool' #prettyprint json
