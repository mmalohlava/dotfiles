function runDai() {
    mkdir -p /tmp/dtmp
    mkdir -p /tmp/dlog

    id=$1
    shift
    nvidia-docker run $@ -e DRIVERLESS_AI_DEBUG_LOG=1 -v /home/michal/dai/license/:/license -e DRIVERLESS_AI_AWS_AUTH="False" -e DRIVERLESS_AI_ENABLED_HDFS_AUTH_TYPE='noauth'  -p 12333:12345 --init -it --rm -v /tmp/dtmp/:/tmp -v /tmp/dlog/:/log -u $(id -u):$(id -g) docker.h2o.ai/opsh2oai/h2oai-runtime:$id
}

function runDaiShell() {
    id=$1
    shift
    runDai $id --entrypoint /bin/bash $@
}

