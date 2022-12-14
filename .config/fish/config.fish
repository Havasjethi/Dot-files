set --path --append PATH /opt/nodejs/node/bin
set --path --append PATH /opt/zstd-1.5.2/programs
set --path --append PATH /opt/jdk
set --path --append PATH /opt/gradle-7.4.2/bin
set --path --append PATH /opt/node/node_bin
set --path --append PATH ~/.cargo/bin
set --path --append PATH ~/Documents/bash
set --path --append PATH /opt/docker-compose-bin
set --path --append PATH /home/jozsef/.deno/bin
set --path --append PATH /opt/lombok/lombok.jar
set --path --append PATH /opt/scala/scala3-3.2.0/bin
set --path --append PATH /opt/helm-v3.10.1-linux-amd64/linux-amd64

set JAVA_HOME /opt/jdk/
set GRADLE_HOME /opt/gradle-7.4.2
set EDITOR nvim
set spring_profiles_active dev

# set NODE_OPTIONS "--openssl-legacy-provider"
# export NODE_OPTIONS=--openssl-legacy-provider

alias vim nvim
alias svim='nvim -u ~/.SpaceVim/vimrc'
alias frc='nvim ~/.config/fish/config.fish'
alias vrc='nvim ~/.vimrc'
alias vkeys='nvim ~/.config/nvim/key_map.vim'
alias irc='nvim ~/.ideavimrc'
alias brc="nvim ~/.bashrc"
alias reload='source ~/.config/fish/config.fish'
# docker ps --format='{"id": "{{.ID}}", "name": "{{.Names}}", "ports": "{{.Ports}}" }' | jq

alias reload='source ~/.config/fish/config.fish'
alias l 'exa -l'
alias ls exa
alias ll 'exa -la'
alias tree='exa -T -L 3'

alias dps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}"'
alias log='vim ~/Documents/logs/(date +%m-%d)'
alias todo='vim ~/todo'
alias notes='mkdir -p ~/Documents/notes/(basename (git rev-parse --show-toplevel)); vim ~/Documents/notes/(basename (git rev-parse --show-toplevel))/(git branch --show-current)'
alias allnotes='vim ~/Documents/notes/(basename (git rev-parse --show-toplevel))/'
alias clip="xsel -b"
alias ripgrep="rg"

alias rabbit_management 'xdg-open (deno run --allow-run ~/bin/some.ts)'

alias startup="~/bin/script_runner.sh ~/bin/startup"
alias shutdown="~/bin/script_runner.sh ~/bin/shutdown 'shutdown now'"

alias minikube_start=minikube start --cpus 6 --memory 12000

# Git stuff
# alias 'git pull' 'git pull --no-ff'
abbr gco 'git commit -m'
abbr gic 'git commit -m'
abbr gih 'git checkout'
abbr gh 'git checkout'
abbr gip 'git pull --no-ff'
abbr gis 'git status'

# /* source <(ng completion script) */
