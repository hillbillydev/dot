export CLICOLOR=true
export HISTORY_IGNORE="(ls *|cd *|pwd|exit|rm *)"

HISTFILE=~/.zsh_history
HISTSIZE=30000
SAVEHIST=30000

alias vim="nvim"

setopt BANG_HIST
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt autocd autopushd pushdignoredups

cdpath=($HOME/projects)

zle -N edit-command-line

bindkey -e "^R" history-incremental-pattern-search-backward
bindkey -e "^S" history-incremental-search-forward
bindkey -e "^P" history-beginning-search-backward
bindkey -e "^N" history-beginning-search-forward
bindkey -e '^X^e' edit-command-line

autoload -U edit-command-line
autoload -U compinit && compinit
autoload -U promptinit && promptinit
autoload -U colors && colors

PROMPT="%{$fg[red]%}%1| %2~ %{$reset_color%}%# "

eval "$(pyenv init --path)"
