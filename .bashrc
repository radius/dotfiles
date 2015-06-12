export WORKON_HOME=$HOME/.virtualenvs 
source /usr/local/bin/virtualenvwrapper.sh 
export PIP_VIRTUALENV_BASE=$WORKON_HOME

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]:\$(parse_git_branch)\[\033[00m\] $ "

# simple server to serve up static files
alias ll="ls -la"

# mkdir and then cd into it
mkcd() {
    mkdir "$1"
    cd "$1"
}

pyserve() {
    python -m SimpleHTTPServer "$1"
}