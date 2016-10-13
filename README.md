#Tmux Spotify integration via dbus

similar to https://github.com/marceloboeira/tmux-spotify but for Linux

##Prerequisite
###Ruby Path
Needs ruby to be installed and loaded *BEFORE* your tmux is loaded
e.g. when loading via zsh
```
eval "$(chef shell-init zsh)"
plugins=(git knife tmux vagrant ssh-agent rsync redis-cli jira history cp kitchen)
```
or
```
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
plugins=(git knife tmux vagrant ssh-agent rsync redis-cli jira history cp kitchen)
```
###Dbus
The dbus gem has to be installed
```
gem install ruby-dbus
```

##Usage

Add the following to your tmux config
```
set -g status-right '#(/PATH/TO/tmux-spotify.rb)'
```
