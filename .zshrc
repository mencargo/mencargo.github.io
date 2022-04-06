export VISUAL=vim
export EDITOR=vim
export PATH=$PATH:$HOME/bin
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

autoload -U colors
colors

# Show completion on first TAB
setopt menucomplete

# Load completions for Ruby, Git, etc.
autoload -U compinit
compinit

alias l="ls -lhA"
alias df="df -h"
alias du="du -shc"
alias free="free -h"
alias gl="git pull"
alias gp="git push"
alias gs="git status"
alias ga="git pull; git add --all"
alias gc="git pull; git commit -a -m"
