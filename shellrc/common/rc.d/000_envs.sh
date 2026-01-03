PLATFORM=$(uname -s)

if [ "$PLATFORM" = "Darwin" ]; then
    export BIN_DIR="$HOME/Bin"
    export DEVEL_HOME="$HOME/Github.com/"
#    export BREW_DIR="$(brew --prefix)"
else
    export BIN_DIR="$HOME/bin"
    export DEVEL_HOME="$HOME/github.com/"
fi

# Export PATH
export PATH=$PATH:$BIN_DIR

# favorite editor
export VISUAL=nvim
export EDITOR=$VISUAL
