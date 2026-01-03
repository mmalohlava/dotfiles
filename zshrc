HOSTNAME=$(hostname -s)

# Source shared environment between Bash and Zsh
source_sh () {
  emulate -LR sh
  . "$@"
}

# Allow local customizations in the ~/.shell_local_before file
if [ -f $HOME/.shell_local_before ]; then
    source $HOME/.shell_local_before
fi

# Allow local customizations in the ~/.zshrc_local_before file
if [ -f $HOME/.zshrc_local_before ]; then
    source $HOME/.zshrc_local_before
fi

# Load all files from .shell/zshrc.d directory
if [ -d $HOME/.shellrc/common/zshrc.d ]; then
  for file in $HOME/.shellrc/common/zshrc.d/*.zsh; do
    source $file
  done
fi

if [ -d $HOME/.shellrc/local/${HOSTNAME}/zshrc.d ]; then
  for file in $HOME/.shellrc/local/${HOSTNAME}/zshrc.d/*.zsh; do
    source $file
  done
fi

# Load all files from .shell/rc.d directory
if [ -d $HOME/.shellrc/common/rc.d ]; then
  for file in $HOME/.shellrc/common/rc.d/*.sh; do
    source $file
  done
fi

if [ -d $HOME/.shellrc/local/${HOSTNAME}/rc.d ]; then
  for file in $HOME/.shellrc/local/${HOSTNAME}/rc.d/*.sh; do
    source $file
  done
fi

# Allow local customizations in the ~/.shell_local_after file
if [ -f $HOME/.shell_local_after ]; then
    source $HOME/.shell_local_after
fi

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f $HOME/.zshrc_local_after ]; then
    source $HOME/.zshrc_local_after
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


alias gam="$HOME/bin/gam7/gam"

# added by Snowflake SnowflakeCLI installer v1.0
export PATH="$HOME/Applications/SnowflakeCLI.app/Contents/MacOS/:$PATH"

source "$HOME/.config/broot/launcher/bash/br"
export PATH="$HOME/.local/bin:$PATH"

# Added by Antigravity
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"

# opencode
export PATH="$HOME/.opencode/bin:$PATH"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

