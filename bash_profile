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

pt(){ pdflatex .tex && pdflatex .tex && chromium -app=file:///home/nfagan/Documents/csci2100/.pdf; };
pt(){ pdflatex  && pdflatex  && chromium -app=file:///home/nfagan/Documents/csci2100/.pdf; };
mcd() { mkdir -p $1 && cd $1; };
