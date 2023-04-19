#!/bin/bash

case $1 in
    start)
        export JAVA_OPT="-Duser.home=`pwd`"
        nohup sh $ROCKETMQ_HOME/bin/mqbroker -n "192.168.1.201:9876;192.168.1.202:9876" -c $ROCKETMQ_HOME/conf/2m-noslave/broker-a.properties &
        ;;
    stop)
        sh $ROCKETMQ_HOME/bin/mqshutdown broker
        ;;
    *)
        echo "Usage: broker-ctl.sh start | stop"
        ;;
esac
