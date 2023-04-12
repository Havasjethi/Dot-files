set JAVA_HOME /opt/jdk/ set GRADLE_HOME /opt/gradle-7.4.2
alias docker_kill_inactive 'docker ps -a -q -f status=exited | xargs docker rm'
set EDITOR nvim

# set spring_profiles_active dev

# set NODE_OPTIONS "--openssl-legacy-provider"
# export NODE_OPTIONS=--openssl-legacy-provider

for x in (/bin/ls ~/.config/fish/scripts )
  source ~/.config/fish/scripts/$x
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
