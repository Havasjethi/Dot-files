set JAVA_HOME /opt/jdk/
set GRADLE_HOME /opt/gradle-7.4.2
set EDITOR nvim
# set spring_profiles_active dev

# set NODE_OPTIONS "--openssl-legacy-provider"
# export NODE_OPTIONS=--openssl-legacy-provider

for x in (/bin/ls ~/.config/fish/scripts/aliases.fish )
  source $x
end

alias rabbit_management 'xdg-open (deno run --allow-run ~/bin/some.ts)'

alias minikube_start='minikube start --cpus 6 --memory 12000'
set -g MINIKUBE_IN_STYLE 0

alias docker_reset='echo y | docker system prune --volumes'

set tn_docker_path /home/jozsef/Documents/Projects/test_nav/tn-3/docker/docker-compose.yaml
alias tn_containers_up "docker-compose -f $tn_docker_path up"
alias tn_containers_down "docker-compose -f $tn_docker_path down"

alias tn_hard_reset 'tn_containers_down; docker_reset; tn_containers_up'
alias tn_soft_reset 'tn_containers_down; tn_containers_up'

alias helm_delete 'helm delete tn-local-helm; kubectl delete -n default persistentvolumeclaim data-postgres-0 | lolcat'
alias helm_start_hard 'helm delete tn-local-helm; kubectl delete -n default persistentvolumeclaim data-postgres-0; helm install -f local_dev_values.yaml tn-local-helm . | lolcat'
alias helm_upgrade 'helm upgrade -f local_dev_values.yaml tn-local-helm . | lolcat'

# /* source <(ng completion script) */
