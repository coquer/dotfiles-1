#
# ~/.bash_profile
#

[[-f ~/.bashrc ]] && . ~/.bashrc

fortune -o | cowsay | lolcat

export PATH=$PATH:~/bin
export EDITOR=/usr/bin/vim
 #better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

if [ -f ~/.bash_aliases ] ; then
	. ~/.bash_aliases
fi


say() {
	figlet -t "$*" | lolcat
}

