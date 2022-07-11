set --path --append PATH /opt/nodejs/node/bin
set --path --append PATH /opt/zstd-1.5.2/programs
set --path --append PATH /opt/jdk
set --path --append PATH /opt/gradle-7.4.2
set --path --append PATH /opt/node/node_bin
set --path --append PATH ~/.cargo/bin
set --path --append PATH ~/Documents/bash
set --path --append PATH /opt/docker-compose-bin


set JAVA_HOME /opt/jdk/
set GRADLE_HOME /opt/gradle-7.4.2
set EDITOR nvim

# set NODE_OPTIONS "--openssl-legacy-provider"
# export NODE_OPTIONS=--openssl-legacy-provider

alias vim nvim
alias svim='nvim -u ~/.SpaceVim/vimrc'
alias frc='nvim ~/.config/fish/config.fish'
alias vrc='nvim ~/.vimrc'
alias irc='nvim ~/.ideavimrc'
alias brc="nvim ~/.bashrc"
alias reload='source ~/.config/fish/config.fish'

alias l 'exa -l'
alias ls exa
alias ll 'exa -la'
alias tree='exa -T -L 3'

alias dps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}"'
alias log='vim ~/Documents/logs/(date +%m-%d)'
alias todo='vim ~/todo'
alias clip="xsel -b"
alias ripgrep="rg"

abbr gco 'git commit -m'
abbr gch 'git checkout'

# /* source <(ng completion script) */
# /* . "$HOME/.cargo/env" */
