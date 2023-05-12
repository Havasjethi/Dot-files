alias vim nvim
alias frc='nvim ~/.config/fish/config.fish'
alias vrc='nvim ~/.vimrc'
alias vread='nvim -R'
alias svim='sudo nvim -u /home/jozsef/.config/nvim/svim.vim'
alias vkeys='nvim ~/.config/nvim/key_map.vim'
alias irc='nvim ~/.ideavimrc'
alias brc="nvim ~/.bashrc"
alias reload='source ~/.config/fish/config.fish'

# docker ps --format='{"id": "{{.ID}}", "name": "{{.Names}}", "ports": "{{.Ports}}" }' | jq
alias dps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}"'

alias reload='source ~/.config/fish/config.fish'
alias l 'exa -l'
alias ls exa
alias ll 'exa -la'
alias tree='exa -T -L 3'

alias log='vim ~/Documents/logs/(date +%m-%d)'
alias todo='vim ~/todo.md'
alias bugs='vim ~/bugs.md'

function notes;
  mkdir -p ~/Documents/notes/(basename (git rev-parse --show-toplevel))
  vim ~/Documents/notes/(basename (git rev-parse --show-toplevel))/(git branch --show-current).md
end

alias allnotes='vim ~/Documents/notes/(basename (git rev-parse --show-toplevel))/'

alias clip="xsel -b"
alias ripgrep="rg"


# Git related hot keys
abbr gco 'git commit -m'
abbr gic 'git commit -m'
abbr gih 'git checkout'
abbr gh 'git checkout'
# alias 'git pull' 'git pull --no-ff'
abbr gip 'git pull'
abbr gis 'git status'

alias startup="~/bin/script_runner.sh ~/bin/startup"
alias shutdown="shutdown now"

