alias ll="ls -l"
alias la="ll -A"
alias lr="ls -R"
alias lar="la -R"
alias l="ls"
alias home="cd ~"
alias figlet="figlet -t"
alias f="fortune -o | cowsay | lolcat"
alias weather='curl wttr.in/halifax'
alias spotify='snap run spotify'
alias 'wifion'='nmcli dev connect wlp3s0'
alias 'wifioff'='nmcli dev disconnect wlp3s0'
alias l.='ls -d .* --color=auto'
alias pow="sudo shutdown now bye"
alias r="ranger"
alias sudo='sudo'
alias note="vim $(date +%F).note"
alias getip="ip -4 address show wlp3s0 up | awk '/.*inet.*/ { print \$2 } ' "

