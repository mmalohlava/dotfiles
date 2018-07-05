#
# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Load all files from .shell/bashrc.d directory
if [ -d $HOME/.shellrc/bashrc.d ]; then
  for file in $HOME/.shellrc/bashrc.d/*.bash; do
    source $file
  done
fi

# Load all files from .shell/rc.d directory
if [ -d $HOME/.shellrc/rc.d ]; then
  for file in $HOME/.shellrc/rc.d/*.sh; do
    source $file
  done
fi

# Secret stuff
#export HOMEBREW_GITHUB_API_TOKEN="b228aa7e1abf6b7ffb56dad7f3fdc9ca65b96944"
#export GISOME_GITHUB_API_TOKEN="b1b0ac52623659c065260f1fe98acc85fd8b9fa3"
#export PRS_GTIHUB_API_TOKEN="d702e783b120f7c1dff5be3a689dd13a4481a258"

# added by travis gem
#[ -f /Users/michal/.travis/travis.sh ] && source /Users/michal/.travis/travis.sh

