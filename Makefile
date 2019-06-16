
LNFLAGS = -b
PREFIX = ~
THIS=~/.dotfiles

install: 
	ln $(LNFLAGS) -s $(THIS)/bash_aliases $(PREFIX)/.config/bash/.bash_aliases
	ln $(LNFLAGS) -s $(THIS)/bash_profile $(PREFIX)/.bash_profile
	ln $(LNFLAGS) -s $(THIS)/bash_prompt $(PREFIX)/.config/bash/.bash_prompt
	ln $(LNFLAGS) -s $(THIS)/bashrc $(PREFIX)/.config/bash/.bashrc
	ln $(LNFLAGS) -s $(THIS)/vimrc $(PREFIX)/.vimrc
	ln $(LNFLAGS) -s $(THIS)/weather $(PREFIX)/.wttr
	ln $(LNFLAGS) -s $(THIS)/xinitrc $(PREFIX)/.xinitrc
	ln $(LNFLAGS) -s $(THIS)/Xresources $(PREFIX)/.Xresources
	mkdir -p $(PREFIX)/.config/i3
	ln $(LNFLAGS) -s $(THIS)/i3-gaps $(PREFIX)/.config/i3/config
	mkdir -p $(PREFIX)/.config/polybar
	ln $(LNFLAGS) -s $(THIS)/polybar $(PREFIX)/.config/polybar/config
	ln $(LNFLAGS) -s $(THIS)/redshift $(PREFIX)/.config/redshift.conf
	
