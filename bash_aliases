
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less
alias ll="ls -l"
alias la="ll -A"
alias lr="ls -R"
alias lar="la -R"
alias l="ls"
alias home="cd ~"
alias figlet="figlet -t"
alias f="fortune -o | cowsay -n | lolcat -f"
alias weather='curl wttr.in/halifax'
alias spotify='snap run spotify'
alias 'wifion'='nmcli dev connect wlp3s0'
alias 'wifioff'='nmcli dev disconnect wlp3s0'
alias l.='ls -d .* --color=auto'
alias pow="sudo shutdown now bye"
alias r="ranger"
alias sudo='sudo'

alias bld='backlight_control -10'
alias blu='backlight_control +10'

alias t='tmux attach || tmux'
alias getip="ip -4 address show wlp3s0 up | awk '/.*inet.*/ { print \$2 } ' "

