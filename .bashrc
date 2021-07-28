# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=nano
export EDITOR=nano
export PATH=$PATH:$HOME/bin:$HOME/go/bin
export HISTCONTROL=erasedups

# Override defaults
alias ls='ls --color=auto'
alias df='df -h'
alias du='du -shc'
alias free='free -h'

alias l='ls -lhA'
alias up='sudo pacman -Syu'
alias upall='aur $(pacman -Qqm)'

alias gl='git pull'
alias gp='git push'
alias gs='git status'
alias ga='git pull; git add --all'
alias gc='git pull; git commit -m'

alias rs='bundle exec rake system:start'

# Simple git prompt
COLOR_GIT_CLEAN='\[\033[1;30m\]'
COLOR_GIT_MODIFIED='\[\033[0;33m\]'
COLOR_GIT_STAGED='\[\033[0;36m\]'
COLOR_RESET='\[\033[0m\]'

function git_prompt() {
  if [ -e ".git" ]; then
    branch_name=$(git symbolic-ref -q HEAD)
    branch_name=${branch_name##refs/heads/}
    branch_name=${branch_name:-HEAD}
    echo -n " → "
    if [[ $(git status 2> /dev/null | tail -n1) = *"nothing to commit"* ]]; then
      echo -n "$COLOR_GIT_CLEAN$branch_name$COLOR_RESET"
    elif [[ $(git status 2> /dev/null | head -n5) = *"Changes to be committed"* ]]; then
      echo -n "$COLOR_GIT_STAGED$branch_name$COLOR_RESET"
    else
      echo -n "$COLOR_GIT_MODIFIED$branch_name*$COLOR_RESET"
    fi
  fi
}

function prompt() {
  PS1="\u@\h [\w$(git_prompt)] \$ "
}

PROMPT_COMMAND=prompt
