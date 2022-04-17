PLATFORM=$(uname -s)

if [ "$PLATFORM" = "Darwin" ]; then
    export BIN_DIR="$HOME/Bin"
    export DEVEL_HOME="$HOME/Devel/"
    export DEVEL_H2O_HOME="$DEVEL_HOME/projects/h2o/repos"
    export BREW_DIR="$(brew --prefix)"
else
    export BIN_DIR="$HOME/bin"
    export DEVEL_HOME="$HOME/dev/"
    export DEVEL_H2O_HOME="$DEVEL_HOME"
fi

# Export PATH
export PATH=$PATH:$BIN_DIR
if [ -n "${BREW_DIR}" ]; then
    export PATH=$PATH:${BREW_DIR}/opt/coreutils/libexec/gnubin
    export PATH=${BREW_DIR}/sbin:$PATH
    export PATH=${BREW_DIR}/bin:$PATH
    export MANPATH="${BREW_DIR}/opt/coreutils/libexec/gnuman:$MANPATH"
fi

# favorite editor
export VISUAL=vim
export EDITOR=$VISUAL


