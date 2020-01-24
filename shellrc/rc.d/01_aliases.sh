# Put your fun stuff here.
alias gvim="gvim -X"

# Mirror stdout to stderr, useful for seeing data going through a pipe
alias peek='tee >(cat 1>&2)'

# Configure ls
if [ "$PLATFORM" = "Darwin" ]; then
    alias vim='mvim -v'
    alias ls="ls -GpFh"
fi

if [ $(which exa) ]; then
    #alias ls='napsat installacni script pro darwin (brew install bat exa git git-sizer ranger)'
    alias ls='exa -al --color=always --group-directories-first'
    alias la='exa -a --color=always --group-directories-first'
    alias ll='exa -l --color=always --group-directories-first'
    alias lt='exa -aT --color=always --group-directories-first' # Tree listing
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
if [ $(which bat) ]; then
alias cat="bat"
fi

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
    docker exec -it $@ "${id}" /bin/bash
}

# A simple example printer
example() { echo "EXAMPLE:"; echo; echo " $@"; echo; echo "OUTPUT:"; echo ; eval "$@" | sed 's/^/ /'; }
