set JAVA_HOME /opt/jdk/ set GRADLE_HOME /opt/gradle-7.4.2
set EDITOR nvim

# set spring_profiles_active dev

# set NODE_OPTIONS "--openssl-legacy-provider"
# export NODE_OPTIONS=--openssl-legacy-provider

for x in (/bin/ls ~/.config/fish/scripts )
  source ~/.config/fish/scripts/$x
end

