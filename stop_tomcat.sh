
tomcat_pid=$(get_tomcat_pid.sh)
if [ ! -z "$tomcat_pid" -a "$tomcat_pid" != "" ]; then
    echo "Stopping Tomcat with pid: $tomcat_pid"
    $TOMCAT_HOME/bin/shutdown.sh
fi

count=0;
while [ ! -z "$tomcat_pid" -a "$tomcat_pid" != "" ]; do
    sleep 1;
    tomcat_pid=$(get_tomcat_pid.sh)

    if [ $count -gt 9 ]; then
#        exit 1;
        break;
    fi
    ((count++))
done

