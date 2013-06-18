#!/bin/bash

PS1="\h:[\W] \u\$ "
export PS1

function source_file {
  file=$1
  if [ -r "$file" ]; then
    source "$file"
    return 0
  else
    echo "Warning: $file doesn't exist"
    return 1
  fi
}

HOSTNAME=`hostname`

echo "####### Welcome on $HOSTNAME, Manuel! ########"
echo

# include some files to enrich our
# bash magic
source_file $HOME/.bashScripts/path
source_file $HOME/.bashScripts/util
source_file $HOME/.bashScripts/pathfinder
source_file $HOME/.bashScripts/alias
source_file $HOME/.bashScripts/tum
source_file $HOME/.bashScripts/functions
source_file $HOME/.bashScripts/variables
source_file $HOME/.bashScripts/db2
source_file $HOME/.bashScripts/java
source_file $HOME/.bashScripts/svn
source_file $HOME/.bashScripts/proxy
source_file $HOME/.bashScripts/latex
source_file $HOME/.bashScripts/gem_deploy
source_file $HOME/.bashScripts/maven
source_file $HOME/.bashScripts/tomcat
source_file $HOME/.bashScripts/maglev
source_file $HOME/.bashScripts/berkeley
source_file $HOME/.bashScripts/pool
source_file $HOME/.bashScripts/mutt
source_file $HOME/.bashScripts/cc0
#source_file $HOME/.rvm/scripts/rvm

export HISTSIZE=100000
export LC_CTYPE=en_US.UTF-8
export ARCHFLAGS="x86_64"

CDPATH=$CDPATH:$HOME/Teaching/Courses/SS12/

# rvm-install added line:
if [[ -s ~/.rvm/scripts/rvm ]]; then
  . ~/.rvm/scripts/rvm
fi

# bash completion
if [[ -f `brew --prefix`/etc/bash_completion ]]; then
  . `brew --prefix`/etc/bash_completion
fi

PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
