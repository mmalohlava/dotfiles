export DEVEL_HOME="$HOME/Devel/"
export DEVEL_H2O_HOME="$DEVEL_HOME/projects/h2o/repos"

export H2O=$DEVEL_H2O_HOME/NEW.h2o.github
export H2O2=$DEVEL_H2O_HOME/h2o2
export SPARK=~/Devel/projects/h2o/sandbox/spark
export SPARKLING_WATER=$DEVEL_H2O_HOME/sparkling-water
export H2OAI_HOME=$DEVEL_H2O_HOME/h2oai/h2oai
export DATABLE_HOME=$DEVEL_H2O_HOME/datatable
export MOJO2_HOME=$DEVEL_H2O_HOME/mojo2
export DAI_HOME=$DEVEL_H2O_HOME/dai

export H2O_HOME=$H2O2
export SPARKLING_HOME=$SPARKLING_WATER
export PROJECTS_HOME="$DEVEL_HOME/projects"

alias projects="cd $PROJECTS_HOME"
alias h2o2="cd $H2O2"
alias spark="cd $SPARK"
alias javassist="cd $HOME/Devel/projects/h2o/sandbox/javassist"
alias h2ologs="cd /Tmp/h2o-${USER}/h2ologs"
alias sw="cd $SPARKLING_WATER"
alias visteg="cd /Users/michal/Devel/projects/visteg/repos/visteg.git"
alias j7to6="cd /Users/michal/Devel/projects/gradle_j7to6/repos/gradle_j7to6.git"
alias sbox="cd /Users/michal/Devel/sandbox"
alias master='git checkout master'
alias h2oai="cd $H2OAI_HOME"
alias dtbl="cd $DATABLE_HOME"
alias mojo2="cd $MOJO2_HOME"
alias dai="cd $DAI_HOME"

function h2oHome() {
  echo $H2O_HOME
}
function swHome() {
  echo $SPARKLING_HOME
}

# Export LLVM4
export LLVM4="$BIN_DIR/llvm"
export SDKS_DIR="$DEVEL_HOME/SDKs"
# Garmin SDK
export GARMIN_SDK="${SDKS_DIR}/connectiq-sdk-mac-2.3.4"


# Tune maven
export MAVEN_OPTS="-Xmx2g -XX:MaxPermSize=512M -XX:ReservedCodeCacheSize=512m"

# Tune Sbt
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

# Go development
export GOPATH="$DEVEL_HOME/projects/go"
export PATH=$PATH:/usr/local/opt/go/libexec/bin:${GARMIN_SDK}/bin
alias gohome="cd $GOPATH"

# Setup wrapper for gradle
function gw {
  cwd=$PWD
  until [ $cwd '==' "/" ]; do
    GRADLEW="$cwd/gradlew"
    if [ -e $GRADLEW ]; then
      echo "Found gradlew in $cwd"
      $GRADLEW $@
      return
    fi
    cwd=$(dirname $cwd)
  done

  echo "No gradle wrapper found, using gradle command!"
  gradle "$@"
}

export PYENV_ROOT=/usr/local/opt/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Added by anaconda
export PATH="$BIN_DIR/anaconda2/bin:$PATH"

# From: https://stackoverflow.com/questions/3425340/how-can-i-capture-the-stdout-from-a-process-that-is-already-running
capture() {
    sudo dtrace -p "$1" -qn '
        syscall::write*:entry
        /pid == $target && arg0 == 1/ {
            printf("%s", copyinstr(arg1, arg2));
        }
    '
}

# Docker aliases
alias drmae='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'


