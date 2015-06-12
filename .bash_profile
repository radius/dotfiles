export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

[[ -s ~/.bashrc ]] && source ~/.bashrc

eval "$(rbenv init -)"