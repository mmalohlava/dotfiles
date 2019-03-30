function runDai() {
    mkdir -p /tmp/dtmp
    mkdir -p /tmp/dlog

    id=$1
    shift
    cmd="nvidia-docker run $@ -e DRIVERLESS_AI_DEBUG_LOG=1 -v /home/michal/dai/license/:/license -e DRIVERLESS_AI_AWS_AUTH='False' -e DRIVERLESS_AI_ENABLED_HDFS_AUTH_TYPE='noauth'  -p 12333:12345 --init -it --rm -v /tmp/dtmp/:/tmp -v /tmp/dlog/:/log -u $(id -u):$(id -g)"
    echo "$cmd $id"
    $cmd "$id"
}

function runDaiShell() {
    id=$1
    shift
    # configure size of terminal based on https://github.com/moby/moby/issues/33794
    runDai $id --entrypoint /bin/bash -e COLUMNS="`tput cols`" -e LINES="`tput lines`" $@
}

function dockerExec() {
    id=$1
    shift
    docker exec -it -e COLUMNS="`tput cols`" -e LINES="`tput lines`" $id /bin/bash
}

# Dev license for DAI
export DRIVERLESS_AI_LICENSE_FILE=$HOME/dai/license/license.sig

