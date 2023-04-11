# Setup Spark environment
SPARK_DISTRIB_DIR="$BIN_DIR/spark"
export SPARK_24="$SPARK_DISTRIB_DIR/spark-2.4.5-bin-hadoop2.7"
export SPARK_33="$SPARK_DISTRIB_DIR/spark-3.3.1-bin-hadoop3"
alias spark24="export SPARK_HOME=$SPARK_24"
alias spark33="export SPARK_HOME=$SPARK_33"

function sparkHome() {
  echo $SPARK_HOME
}

function sparkHome() {
  env | grep "SPARK_"
}

