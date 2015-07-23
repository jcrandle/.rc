rm $TOMCAT_HOME/logs/*.log* $TOMCAT_HOME/logs/*.out $TOMCAT_HOME/logs/*.txt

$TOMCAT_HOME/bin/startup.sh

tail -f $TOMCAT_HOME/logs/catalina.out | while read LOGLINE
do
   [[ "${LOGLINE}" == *"Server startup"* ]] && echo ${LOGLINE} && pkill -P $$ tail
done
