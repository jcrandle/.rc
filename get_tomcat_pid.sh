echo `ps ax | grep tomcat | grep 'Bootstrap start' | sed -e 's/^[[:space:]]*//' | cut -d' ' -f1`
