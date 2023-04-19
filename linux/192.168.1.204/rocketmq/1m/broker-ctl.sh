#!/bin/bash

case $1 in
    start)
        export JAVA_OPT="-Duser.home=`pwd`"
        nohup sh $ROCKETMQ_HOME/bin/mqbroker -n localhost:9876 &
        ;;
    stop)
        sh $ROCKETMQ_HOME/bin/mqshutdown broker
        ;;
    *)
        echo "Usage: broker-ctl.sh start | stop"
        ;;
esac
