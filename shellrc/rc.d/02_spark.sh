# Setup Spark environment
SPARK_DISTRIB_DIR="$BIN_DIR/spark"
export SPARK_13="$SPARK_DISTRIB_DIR/spark-1.3.1-bin-hadoop2.6"
export SPARK_14="$SPARK_DISTRIB_DIR/spark-1.4.1-bin-hadoop2.6"
export SPARK_15="$SPARK_DISTRIB_DIR/spark-1.5.2-bin-hadoop2.6"
export SPARK_16="$SPARK_DISTRIB_DIR/spark-1.6.3-bin-hadoop2.6"
export SPARK_200="$SPARK_DISTRIB_DIR/spark-2.0.0-bin-hadoop2.6"
export SPARK_20="$SPARK_DISTRIB_DIR/spark-2.0.2-bin-hadoop2.6"
export SPARK_21="$SPARK_DISTRIB_DIR/spark-2.1.1-bin-hadoop2.6"
export SPARK_220="$SPARK_DISTRIB_DIR/spark-2.2.0-bin-hadoop2.7"
export SPARK_221="$SPARK_DISTRIB_DIR/spark-2.2.1-bin-hadoop2.7"
export SPARK_23="$SPARK_DISTRIB_DIR/spark-2.3.0-bin-hadoop2.7"
alias spark13="export SPARK_HOME=$SPARK_13"
alias spark14="export SPARK_HOME=$SPARK_14"
alias spark15="export SPARK_HOME=$SPARK_15"
alias spark16="export SPARK_HOME=$SPARK_16"
alias spark20="export SPARK_HOME=$SPARK_20"
alias spark200="export SPARK_HOME=$SPARK_200"
alias spark21="export SPARK_HOME=$SPARK_21"
alias spark220="export SPARK_HOME=$SPARK_220"
alias spark221="export SPARK_HOME=$SPARK_221"
alias spark23="export SPARK_HOME=$SPARK_23"

function sparkHome() {
  echo $SPARK_HOME
}

function sparkHome() {
  env | grep "SPARK_"
}

