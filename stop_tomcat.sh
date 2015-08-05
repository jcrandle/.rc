
#tomcat_pid=`ps ax | grep tomcat | grep 'Bootstrap start' | sed -e 's/^[[:space:]]*//' | cut -d' ' -f1`
tomcat_pid=$(get_tomcat_pid.sh)
if [ ! -z "$tomcat_pid" -a "$tomcat_pid" != "" ]; then
    echo "Stopping Tomcat with pid: $tomcat_pid"
    $TOMCAT_HOME/bin/shutdown.sh
fi

while [ ! -z "$tomcat_pid" -a "$tomcat_pid" != "" ]; do
    sleep 1;
    #tomcat_pid=`ps ax | grep tomcat | grep 'Bootstrap start' | sed -e 's/^[[:space:]]*//' | cut -d' ' -f1`
    tomcat_pid=$(get_tomcat_pid.sh)
done
