#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.local/bin:$HOME/bin:$HOME/.cargo/bin:$PATH"
export BROWSER=brave
export EDITOR=nvim
export VISUAL=$EDITOR

PS1='\[\e[38;5;73m\] \[\e[38;5;116m\]$(if [[ "$PWD" == "$HOME" ]]; then echo ""; else echo "\w"; fi) \[\e[38;5;167m\]❯ \[\e[0m\]'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# fzf
eval "$(fzf --bash)"
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --strip-cwd-prefix --hidden --follow'
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}' --preview-window right:60%"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
