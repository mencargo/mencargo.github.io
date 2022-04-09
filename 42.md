## SSH (~/.ssh)
```
ssh-keygen
```


## GIT (/repo/.git)

```
git init
git remote set-url origin <url>
git push -u origin master
```

`git clone <url> <folder>`

### .gitignore
```
.*
*.out
*.pdf
main.c
```

### force stuff:
`git add -f main.c` an excercise that asks for a whole program

`git rm -f wrong_file` could be folder with -rf

`git checkout master -f <file>` could be the entire repo without <file>

### check stuff
`git log` check that your HEAD is in the same commit than origin/master

 
## ZSH (~/.zshrc)
```
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
export HISTSIZE=100              # Maximum events for internal history
export SAVEHIST=100              # Maximum events in history file

autoload -U colors
colors

# Load completions for Ruby, Git, etc.
autoload -U compinit
compinit

alias gl="git pull"
alias gp="git push"
alias gs="git status"
alias ga="git pull; git add --all"
alias gc="git pull; git commit -a -m"
alias cc="gcc -Wall -Werror -Wextra *.c && ./a.out"
alias norm="norminette -R CheckForbiddenSourceHeader ."
```

## VIM (~/.vimrc or ~/.myvimrc in exam)
```
set history=500
set autoread
set ruler
set incsearch
set showmatch
set number
set foldcolumn=1
set list
set listchars=tab:\ \ ┊
syntax	enable
```
