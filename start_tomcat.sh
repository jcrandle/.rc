
if [ -e "$TOMCAT_HOME/logs/*.log*" ]; then
    rm $TOMCAT_HOME/logs/*.log* $TOMCAT_HOME/logs/*.out $TOMCAT_HOME/logs/*.txt
fi

$TOMCAT_HOME/bin/startup.sh

tail -f $TOMCAT_HOME/logs/catalina.out | while read LOGLINE
do
   [[ "${LOGLINE}" == *"Server startup"* ]] && echo ${LOGLINE} && pkill -P $$ tail
done


echo "Tomcat started with process Id: $(get_tomcat_pid.sh)"
