# Get Java home (OSX specific)
export JAVA_10_HOME=$(/usr/libexec/java_home -v10)
export JAVA_9_HOME=$(/usr/libexec/java_home -v9)
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_6_HOME=$(/usr/libexec/java_home -v1.6)

# Export aliases to get proper Java
alias java6='export JAVA_HOME=$JAVA_6_HOME'
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java9='export JAVA_HOME=$JAVA_9_HOME'
alias java10='export JAVA_HOME=$JAVA_10_HOME'

# Default java7
export JAVA_HOME=$JAVA_7_HOME
#export JAVA_HOME=$JAVA_8_HOME

function javaHome() {
  echo $JAVA_HOME
}

function javaHomes() {
    env | grep 'JAVA_[0-9][0-9]*_HOME'
}



