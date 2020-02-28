# ~/.bashrc

# Set Vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

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

# Make new directory and set it as PWD
mkcd() {
      mkdir -p "$1" && cd "$1"
}

# Do a quick real number calculation with bc
qc() {
    echo "$1" | bc -l
}

# Get more accurate info about a Taskwarrior task
task-due() {
    task information "$1" | grep ^Description
    task information "$1" | grep ^Due
}

# Wrapper for calling Makefile with CLI argument
# Note: Work in progress
argumake() {
    make argument-build COMMAND_LINE_ARGUMENT="$1";
}

