export PATH=/usr/local/bin:$PATH:/usr/local/sbin:/usr/local/mysql/bin
export EDITOR='mate -w'

export CLICOLOR=1

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

export PS1='\[\033[01;32m\]\u\[\033[01;34m\] \w\[\033[31m\]$(parse_git_branch " (%s)")\[\033[01;34m\]$\[\033[00m\] '

