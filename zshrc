# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"
# HYPHEN_INSENSITIVE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)
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
alias vimzsh="vim ~/.zshrc"
alias vimtmux="vim ~/.zshrc"
alias vimvim="vim ~/.vimrc"
alias reload="source ~/.zshrc"

export VISUAL=vim
export EDITOR="$VISUAL"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin/:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# CTRL-T file preview
export FZF_CTRL_T_OPTS="--preview '(bat --style=numbers --color=always {} || highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null | head -500'"
