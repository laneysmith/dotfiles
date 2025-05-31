export HOME=/Users/laneysmith/

# aliases
alias c='clear'
alias clearnm="find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +" # delete node_modules
alias dcd='docker-compose down'
alias dcu='docker-compose up'
alias dev='cd ~/Development'
alias eg='ember generate'
alias gbtidy="git branch --format'%(refname:short)' | grep -Ev '^(master|main|laney) | xargs -r git branch -D"
alias gbdl='git branch -d ' # delete local branch
alias guncom='git reset --soft HEAD~1'
alias rmrfnm='rm -rf /node_modules && yarn install'
alias yf='yarn format'
alias yl='yarn lint'
alias ys='yarn start'
alias yt='yarn test'
alias ytw='yarn test --watch'
alias z='vi ~/.zshrc'
alias sz='source ~/.zshrc'

# show/hide hidden files
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# mov to gif converter; call like "movtogif in.mov out.gif"
function movtogif(){
    ffmpeg -i "$1" -vf scale=800:-1 -r 10 -f image2pipe -vcodec ppm - |\
    convert -delay 5 -layers Optimize -loop 0 - "$2"
}

# needed for scss-lint
export PATH="$HOME/.rbenv/bin:$PATH"
# export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=/usr/local/sbin:/Users/laneysmith/Library/Python/3.7/bin:$PATH

# zsh
export ZSH="$HOME.oh-my-zsh" # Path to your oh-my-zsh installation
ZSH_THEME="laneysmith" # Name of the theme to load from  ~/.oh-my-zsh/themes/
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# go
export GOPATH=$HOME/Documents/go
export PATH=$PATH:$GOPATH/bin

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"

# MacPorts Installer addition on 2016-09-08_at_17:43:43: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export JAVA_HOME=$(/usr/libexec/java_home)

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rvm
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME//.rvm/bin"
export PATH="/usr/local/opt/ruby/bin:$PATH"
