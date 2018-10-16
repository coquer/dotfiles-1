#
# ~/.bash_profile
#

#[[-f ~/.bashrc ]] && . ~/.bashrc
if [ -f ~/.bashrc ] ; then
	. ~/.bashrc
fi


#fortune -o | cowsay | lolcat

export PATH=$PATH:~/bin
export EDITOR=/usr/bin/vim

if [ -f ~/.bash_aliases ] ; then
	. ~/.bash_aliases
fi


say() {
	figlet -t "$*" | lolcat
}

