export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# file stuff
alias ll="ls -la"

# docker stuff
alias dcd="docker-compose down"
alias dcu="docker-compose up"
alias dcb="docker-compose build"

# git stuff
alias gst="git status -s"

# git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]:\$(parse_git_branch)\[\033[00m\] $ "

# ruby
eval "$(rbenv init -)"

# java stuff
export JAVA_HOME=$(/usr/libexec/java_home --version 1.8)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/darius/.sdkman"
[[ -s "/Users/darius/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/darius/.sdkman/bin/sdkman-init.sh"

# python virtual envs
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME

# mkdir and then cd into it
mkcd() {
    mkdir "$1"
    cd "$1"
}

# simple python server
pyserve() {
    python -m SimpleHTTPServer "$1"
}
