export PATH=$PATH:/usr/local/mysql/bin
export EDITOR='mate -w'

export CLICOLOR=1

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\w\$(parse_git_branch) $ "
