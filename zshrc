# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"
# HYPHEN_INSENSITIVE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

export PATH=$PATH:/opt/local/bin:~/Sync/Projects/shell_programs:~/.node/bin
export PATH=$PATH:/usr/local/Cellar/node/11.10.0/bin/
source $ZSH/oh-my-zsh.sh

# Pure Prompt: https://github.com/sindresorhus/pure#getting-started
#autoload -U promptinit; promptinit
#prompt pure

# vim keybindings
set -o vi
bindkey "^R" history-incremental-search-backward

alias ccat='pygmentize -g -O style=colorful,linenos=1'
alias loadnvm="~/.nvm/nvm.sh"
alias lsc="clear && ls"
alias gb="git branch | cat"
alias safevim="vim -u NONE"

export VISUAL=vim
export EDITOR="$VISUAL"

# PYTHONPATH
export PYTHONPATH="/Users/mitchvollebregt/Sync/Projects/libsvm/python/:$PYTHONPATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin/:$PATH"

