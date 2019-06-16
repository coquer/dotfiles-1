#!/bin/bash

export TERM=rxvt-unicode-256color
export EDITOR=/usr/bin/vim
export PAGER=/usr/bin/less
export PATH=$PATH:/home/nfagan/.cargo/bin
export HISTSIZE=-1

tput init
tput clear


bcon="$HOME/.config/bash"


if [ -f $bcon/.bashrc ] ; then
	. $bcon/.bashrc;
fi;
if [ -f $bcon/.bash_aliases ] ; then
	. $bcon/.bash_aliases ;
fi;
if [ -f $bcon/.bash_prompt ] ; then
	. $bcon/.bash_prompt ;
fi;

vconf="$HOME/.config/vim"
alias vim="vim -i $vconf/.viminfo -u $vconf/.vimrc"




readme() {
	pandoc $1 | lynx -stdin ;
};

# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
fi
