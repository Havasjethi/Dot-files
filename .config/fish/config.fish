# ./scripts/aliases.fish
# ./scripts/private_stuff.fish
# ./scripts/work.fish

set JAVA_HOME /opt/jdk/
set GRADLE_HOME /opt/gradle-7.4.2
set EDITOR nvim

# set spring_profiles_active dev

# set NODE_OPTIONS "--openssl-legacy-provider"
# export NODE_OPTIONS=--openssl-legacy-provider

set config_folder ~/.config/fish/scripts

for conf_file in (/bin/ls $config_folder  )
  source "$config_folder/$conf_file"
end

abbr docker_kill_inactive 'docker ps -a -q -f status=exited | xargs docker rm'
abbr dkilli 'docker_kill_inactive'
# abbr dkill 'docker kill'
abbr dlogs 'docker logs'
abbr dcup 'docker-compose up'
abbr dcu 'docker-compose up'
abbr dcd 'docker-compose down'

function dexec;
  docker exec -it $argv[1] bash
end

function dexec_sh;
  docker exec -it $argv[1] sh
end
