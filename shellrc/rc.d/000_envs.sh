PLATFORM=$(uname -s)

if [[ "$PLATFORM" -eq "Darwin" ]]; then
    export BIN_DIR="$HOME/Bin"
else
    export BIN_DIR="$HOME/bin"
fi

# Export PATH
export PATH=$PATH:$BIN_DIR:/usr/local/opt/coreutils/libexec/gnubin
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$BIN_DIR/arcanist/bin:$PATH
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

