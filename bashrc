# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1=' $ '

# ----------------------------------------------------------------------
# ALIASES
alias ff='/usr/bin/firefox &> /dev/null &'
alias ls='ls --color=auto --group-directories-first'
alias open='open(){ xdg-open "$@" &> /dev/null & }; open'
alias cal='task calendar'
alias suspend='systemctl suspend'
alias toggle_touchpad='~/.dotfiles/scripts/toggle_touchpad.sh'

# ----------------------------------------------------------------------
# FUNCTIONS
mkcd() {
      mkdir -p "$1" && cd "$1"
}

qc() {
    echo "$1" | bc -l
}

task-due() {
    task information "$1" | grep ^Description
    task information "$1" | grep ^Due
}

argumake() {
    make argument-build COMMAND_LINE_ARGUMENT="$argument";
}

export VISUAL=vim
export EDITOR="$VISUAL"
