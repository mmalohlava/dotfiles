# Put your fun stuff here.
alias gvim="gvim -X"

# Mirror stdout to stderr, useful for seeing data going through a pipe
alias peek='tee >(cat 1>&2)'

if [ "$PLATFORM" = "Darwin" ]; then
    alias vim='mvim -v'
    alias ls="ls -GpFh"
fi

# Correct typos
alias gti="git"
alias gt="git"
alias mkae=make

# Applications
alias tmp="cd /tmp"
alias doc="cd $HOME/Documents"
alias dbox="cd $HOME/Dropbox/"
alias dload="cd $HOME/Downloads/"
alias acroread="open -a 'Adobe Acrobat Reader DC'"
alias vless='/usr/share/vim/vim73/macros/less.sh'

# Needs: https://github.com/sharkdp/bat
alias cat="bat"

# Update dotfiles
dfu() {
    (
        cd ~/.dotfiles && git pull --ff-only && ./install -q
    )
}

# Jump to directory containing file
jump() {
    cd "$(dirname ${1})"
}


up()
{
    local cdir="$(pwd)"
    if [[ "${1}" == "" ]]; then
        cdir="$(dirname "${cdir}")"
    elif ! [[ "${1}" =~ ^[0-9]+$ ]]; then
        echo "Error: argument must be a number"
    elif ! [[ "${1}" -gt "0" ]]; then
        echo "Error: argument must be positive"
    else
        for ((i=0; i<${1}; i++)); do
            local ncdir="$(dirname "${cdir}")"
            if [[ "${cdir}" == "${ncdir}" ]]; then
                break
            else
                cdir="${ncdir}"
            fi
        done
    fi
    cd "${cdir}"
}

function ppgrep() {
    pgrep $1 | xargs ps aux
}

alias pgrep=ppgrep

function findf {
   if [ -z "$2" ]; then
        DIR=.
   else
        DIR=$2
   fi

   FILETF=$1

   find ${DIR} -name "$FILETF"
}

function dcexec() {
    id=$1
    shift
    docker exec -it $@ ${id} /bin/bash
}

