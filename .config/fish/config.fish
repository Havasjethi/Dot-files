set --path --append PATH /opt/nodejs/node/bin
set --path --append PATH /opt/zstd-1.5.2/programs

# set --path --append PATH ~/.deno/bin/
set --path --append PATH ~/Documents/bash
# set --path --append PATH ~/.wasmtime/bin
# set HELIX_RUNTIME /home/havas/.config/helix/runtime

set EDITOR nvim

# set NODE_OPTIONS "--openssl-legacy-provider"
export NODE_OPTIONS=--openssl-legacy-provider

alias vim nvim
alias svim='vim -u ~/.SpaceVim/vimrc'

alias l 'exa -l'
alias ls exa
alias ll 'exa -la'
alias tree='exa -T -L 3'

abbr gco 'git commit -m'

set -gx WASMTIME_HOME "$HOME/.wasmtime"

string match -r ".wasmtime" "$PATH" > /dev/null; or set -gx PATH "$WASMTIME_HOME/bin" $PATH
