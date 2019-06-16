
# basics
alias du="du -h"
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -h'
alias np='nano -w PKGBUILD'
alias more=less

# LS
alias ll="ls -l"
alias la="ll -A"
alias lr="ls -R"
alias lar="la -R"
alias l="ls"
alias l.='ls -d .* --color=auto'

# Wireless
alias 'wifion'='nmcli dev connect wlp3s0'
alias 'wifioff'='nmcli dev disconnect wlp3s0'
alias getip="ip -4 address show wlp3s0 up | awk '/.*inet.*/ { print \$2 } ' "
alias pubip="echo \$(curl -s ipv4bot.whatismyipaddress.com)"

# Git
alias g="git status"
alias gc="git commit"
alias gp="git push"
alias ga="git add"

#random
alias pow="sudo shutdown now bye"

alias r="ranger"

alias bld='backlight_control -10'
alias blu='backlight_control +10'

alias feh="feh -ZdB black "

alias t="task"

alias figlet="figlet -t"
alias f="fortune -o | cowsay -n | lolcat -f"

alias weather='~/.wttr'

alias mfd='sudo mount -o rw,user'
alias umfd='sudo umount -f /mnt'

alias ddgr="ddgr --num=7"
