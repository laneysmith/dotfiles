export HOME=/Users/laneysmith/
alias c='clear'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout '
alias gcob='git checkout -b '
alias gcorb='git checkout --track '
alias gdlb='git branch -d '
alias gdrb='git push -d origin '
alias ggpush='git push origin `git rev-parse --abbrev-ref HEAD`'
alias gst="git status"
alias gsta='git stash'
alias gstaa='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'
alias gsu='git submodule update'
alias gts='git tag -s'
alias gtv='git tag | sort -V'
alias guncom='git reset --soft HEAD~1'
alias gunignore='git update-index --no-assume-unchanged'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias gup='git pull --rebase'
alias gupv='git pull --rebase -v'
alias gvt='git verify-tag'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit -m "--wip--"'
alias w='webstorm'
alias z='vi ~/.zshrc'
alias sz='source ~/.zshrc'

# show/hide hidden files
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# mov to gif converter; call like "movtogif in.mov out.gif"
movtogif(){
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

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load from  ~/.oh-my-zsh/themes/
ZSH_THEME="laneysmith"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# android studio
PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"

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

# rust
# export PATH=/Users/laneysmith/.cargo/bin:/Users/laneysmith/.rvm/gems/ruby-2.3.0/bin:/Users/laneysmith/.rvm/gems/ruby-2.3.0@global/bin:/Users/laneysmith/.rvm/rubies/ruby-2.3.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/laneysmith/.rvm/bin:/Users/laneysmith/Documents/go/bin:/usr/local/opt/go/libexec/bin:/usr/local/lib

# git branch in prompt
# parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
# export PS1="\[\033[35m\]\u \[\033[34m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rvm
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME//.rvm/bin"
export PATH="/usr/local/opt/ruby/bin:$PATH"
