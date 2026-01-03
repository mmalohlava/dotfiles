export SPARKLING_WATER=$DEVEL_H2O_HOME/sparkling-water
export H2OAI_HOME=$DEVEL_H2O_HOME/h2oai/h2oai
export DATABLE_HOME=$DEVEL_H2O_HOME/datatable
export MOJO2_HOME=$DEVEL_H2O_HOME/mojo2
export DAI_HOME=$DEVEL_H2O_HOME/dai

export SPARKLING_HOME=$SPARKLING_WATER
export PROJECTS_HOME="$DEVEL_HOME/projects"

alias sw="cd $SPARKLING_WATER"
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

# Tune maven
export MAVEN_OPTS="-Xmx2g -XX:MaxPermSize=512M -XX:ReservedCodeCacheSize=512m"

# Tune Sbt
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

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


