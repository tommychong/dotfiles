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

# Activate Python2.7 virtualenv
source ~/.virtualenv/khan27/bin/activate

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/Users/Tommy/.virtualenv/khan27/bin:/Users/Tommy/khan/devtools/arcanist/khan-bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

################################################################################
# Khan Academy specific bashrc

# Add Phabricator bins to PATH
export PATH="$HOME/khan/devtools/arcanist/khan-bin:$PATH"

# Figure out what directory we're *really* in (following symlinks).
# We need this because *-completion.bash are siblings to this script.
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do   # follow symlinks
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"    # resolve relative symlink
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

# Enable autocompletion for git and hg
#source "$DIR/git-completion.bash"
#source "$DIR/hg-completion.bash"

alias launchdev="dev_appserver.py --datastore_path=../current.sqlite --blobstore_path=./datastore/blobs --require_indexes --host=0.0.0.0 ."

alias ls='ls -GFh'

alias gs='git status'
alias gg='git grep'
alias ga='git add'
alias gap='git add -p'
alias gd='git diff'
alias gfind='git ls-files'

#Use badass 256 color xterm
export TERM=xterm-256color
