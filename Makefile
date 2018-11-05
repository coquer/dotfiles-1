
LNFLAGS = -b -r
PREFIX = ~

targets = bash_aliases bash_profile bashrc i3-gaps \
		  polybar vimrc weather xinitrc Xresources
names = .bash_aliases .bash_profile .bashrc .config/i3/config \
		.config/polybar/config .vimrc .weather .xinitrc .Xresources
install: 
	ln $(LNFLAGS) -s bash_aliases $(PREFIX)/.bash_aliases
	ln $(LNFLAGS) -s bash_profile $(PREFIX)/.bash_profile
	ln $(LNFLAGS) -s bashrc $(PREFIX)/.bashrc
	ln $(LNFLAGS) -s vimrc $(PREFIX)/.vimrc
	ln $(LNFLAGS) -s weather $(PREFIX)/.wttr
	ln $(LNFLAGS) -s xinitrc$(PREFIX)/.xinitrc
	ln $(LNFLAGS) -s Xresources $(PREFIX)/.Xresources
	mkdir -p $(PREFIX)/.config/i3
	ln $(LNFLAGS) -s i3-gaps $(PREFIX)/.config/i3/config
	mkdir -p $(PREFIX)/.config/polybar
	ln $(LNFLAGS) -s polybar $(PREFIX)/.config/polybar/config
	
