export CLICOLOR=1

set -o vi

GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1

BYELLOW='\[\033[01;33m\]'
IBLACK='\[\033[0;90m\]'
PS_CLEAR='\[\033[0m\]'
GREEN='\[\033[0;32m\]'

GIT_PS1='$(__git_ps1 " %s")'
export PS1="${BYELLOW}\W${GREEN}${GIT_PS1}${PS_CLEAR}${IBLACK}\$ "
# PROMPT_COMMAND='PS1="${YELLOW}\W$(__git_ps1 " ${WHITE}(${GREEN}%s${WHITE})")${WHITE}$ "'

alias ..='cd ..'
alias ...='cd ../..'
alias gac='git add . && git commit'
alias gpom='git push origin master'

export PGDATA=/usr/local/var/postgres
export GOPATH=$HOME/Documents/go-workspace

source ~/.git-prompt.sh

export PATH="$HOME/.cargo/bin:$PATH"
