#!/bin/bash

case $1 in
    start)
        export JAVA_OPT="-Duser.home=`pwd`"
        nohup sh $ROCKETMQ_HOME/bin/mqnamesrv &
        ;;
    stop)
        sh $ROCKETMQ_HOME/bin/mqshutdown namesrv
        ;;
    *)
        echo "Usage: namesrv-ctl.sh start | stop"
        ;;
esac
