source ~/.git-prompt.sh

# Go Paths
export PATH=$PATH:~/Dev/go/bin
export GOPATH=$HOME/Dev/go

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit vcs_info -i && compinit -i
precmd() { vcs_info }
source <(kubectl completion zsh)
source <(helm completion zsh)

# Prompt
zstyle ':vcs_info:git:*' formats '(%b) '
setopt PROMPT_SUBST
PROMPT='%n@%m %1~ %F{green}${vcs_info_msg_0_}%f%# '

# Alias
alias ll='ls -alh'
alias lkd='~/.linkerd2/bin/linkerd'
alias k='kubectl'

## Colours
alias grep='grep --color=auto'
alias diff='colordiff'
