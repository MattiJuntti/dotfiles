# ~/.bashrc

# Set Vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"
export MANWIDTH=100

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set default Prompt String 1
PS1="\[\033[1;37m\] ▶ \[\033[00m\]"

# ----------------------------------------------------------------------
# ALIASES
alias ff='/usr/bin/firefox &> /dev/null &'
alias ls='ls --color=auto --group-directories-first'
alias open='open(){ xdg-open "$@" &> /dev/null & }; open'
alias cal='task calendar'
alias suspend='systemctl suspend'
alias toggle_touchpad='~/git/dotfiles/scripts/toggle_touchpad.sh'
alias vmod='vim -p `git diff --name-only `'

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

