PLATFORM=$(uname -s)

if [ "$PLATFORM" = "Darwin" ]; then
    export BIN_DIR="$HOME/Bin"
    export DEVEL_HOME="$HOME/Devel/"
    export DEVEL_H2O_HOME="$DEVEL_HOME/projects/h2o/repos"
else
    export BIN_DIR="$HOME/bin"
    export DEVEL_HOME="$HOME/dev/"
    export DEVEL_H2O_HOME="$DEVEL_HOME"
fi

# Export PATH
export PATH=$PATH:$BIN_DIR:/usr/local/opt/coreutils/libexec/gnubin
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$BIN_DIR/arcanist/bin:$PATH
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# favorite editor
export VISUAL=vim
export EDITOR=$VISUAL


