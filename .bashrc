#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


######### START ENVIRONMENT VARIABLES #########

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

export TERM=xterm-256color
export HISTCONTROL=ignoredups
export VISUAL=vim
export EDITOR=$VISUAL

export GIT_PS1_SHOW_COLORHINTS=true
export PROMPT_COMMAND='__git_ps1 "\w" "\n\\\$ "'

######### END ENVIRONMENT VARIABLES #########
######### START ALIASES #########

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias mpwd='cd $GOPATH/src/k8s.io/minikube'
alias mk='$GOPATH/src/k8s.io/minikube/out/minikube'

######### END ALIASES #########
######### START PATH  #########

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

export PATH=$PATH:$GOBIN
export PATH=$PATH:/usr/local/google-cloud-sdk

######### END PATH  #########

######### START EXTRA SCRIPTS #########
source ~/.minikube-completion
source ~/.kube-completion
source ~/.bash_git
######### END EXTRA SCRIPTS #########

PS1='[\u@\h \W]\ `__git_ps1` $ '
PS1='\w `__git_ps1`\n\$ '
