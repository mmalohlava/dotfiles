# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source shared environment between Bash and Zsh
source_sh () {
  emulate -LR sh
  . "$@"
}

# Allow local customizations in the ~/.shell_local_before file
if [ -f $HOME/.shell_local_before ]; then
    source $HOME/.shell_local_before
fi

# Allow local customizations in the ~/.bashrc_local_before file
if [ -f $HOME/.bashrc_local_before ]; then
    source $HOME/.zshrc_local_before
fi

# Load all files from .shell/zshrc.d directory
if [ -d $HOME/.shellrc/common/zshrc.d ]; then
  for file in $HOME/.shellrc/common/zshrc.d/*.zsh; do
    source $file
  done
fi

# Load all files from .shell/rc.d directory
if [ -d $HOME/.shellrc/common/rc.d ]; then
  for file in $HOME/.shellrc/common/rc.d/*.sh; do
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


