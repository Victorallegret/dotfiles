export ZSH=~/.oh-my-zsh
export LANG="en_US.UTF-8"

ZSH_THEME="robbyrussell"
DEFAULT_USER="$USER"

plugins=(git rails bundler laravel5 osx docker)

if brew command command-not-found-init > /dev/null 2>&1;
then
  eval "$(brew command-not-found-init)"
fi

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"

# Global aliases
alias cl="clear"
alias sites="cd ~/Sites"
alias weather='curl -s "wttr.in/?lang=fr" | sed -n "1,7p"'
alias cask="brew cask"
alias cat="ccat"

# Git aliases
alias gau="git add -u"
alias gd.="git diff --color-words=."
alias gst="clear && git status"
alias gs="gst"
alias gsu="clear && git status -u"
alias nah="git reset --hard HEAD && git clean -fd"
alias undo="git reset HEAD\^"
alias wip="git add . && git commit -m WIP"
alias go="git open"

# Vagrant aliases
alias vd="vagrant destroy"
alias vgs="vagrant global-status"
alias vh="vagrant halt"
alias vp="vagrant provision"
alias vs="vagrant status"
alias vu="vagrant up"

# Docker aliases
alias dps="docker ps"
alias dc="docker-compose"
alias yt="docker run --rm -u $(id -u):$(id -g) -v $PWD:/data vimagick/youtube-dl"

# Artisan aliases
alias artisan="php artisan"

# Source zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Source zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
