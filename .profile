export PATH=/usr/local/bin:$PATH:/usr/local/sbin:/usr/local/mysql/bin
export EDITOR='mate -w'

export CLICOLOR=1

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

YELLOW="\[\033[0;33m\]"
GREEN="\[\033[01;32m\]"
PURPLE="\[\033[01;35m\]"
NO_COLOR="\[\033[00m\]"

PS1="$PURPLE\w$YELLOW \$(parse_git_branch)$NO_COLOR\$ "