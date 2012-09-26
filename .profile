# homebrew bin & sbin
export PATH=/usr/local/bin:$PATH:/usr/local/sbin

#phantomjs
export PATH=$PATH:/usr/local/bin/phantomjs

# mysql
export PATH=$PATH:/usr/local/mysql/bin

# mysql dynlib
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# cake (closure make)
export PATH=$PATH:/usr/local/cake/bin

# node package manager
export PATH=$PATH:/usr/local/share/npm/bin

# closure contrib classpath
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar

#node path
export NODE_PATH=$NODE_PATH:/usr/local/lib/node

#macvim
export VIM_APP_DIR=/usr/local/Cellar/macvim/v7.3-53

#rack_env
export RACK_ENV=development

#adjusting prompt for git
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

YELLOW="\[\033[0;33m\]"
GREEN="\[\033[01;32m\]"
PURPLE="\[\033[01;35m\]"
NO_COLOR="\[\033[00m\]"

PS1="$PURPLE\W$YELLOW \$(parse_git_branch)$NO_COLOR\$ "
#PS1="\h:\W \u\$"
#done

alias start_redis="redis-server /usr/local/etc/redis.conf"
alias start_postgres="pg_ctl start -D /usr/local/var/postgres"
alias mysql_start="sudo /usr/local/mysql/bin/mysqld_safe --user=mysql &"

alias mysql="/usr/local/mysql/bin/mysql"
alias mysqladmin="/usr/local/mysql/bin/mysqladmin"

#ls
alias ll="ls -l"
alias la="ls -al"

#project shortcut
alias mnca="cd ~/Documents/Rails/makersandco && sublime . && bundle exec guard"
alias mnc="cd ~/Documents/Rails/makersandco"

#customer projects
#...
#note for mongodb: "You can cleanly stop mongod using a SIGINT or SIGTERM signal on Unix-like systems. Either ^C, "kill -2 PID," or kill -15 PID will work."

#default editor
export EDITOR='sublime .'

#add term color support
export CLICOLOR=1
export TERM=xterm-color
export LSCOLORS=exfxcxdxbxegedabagacad

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  

