export TOMCAT_HOME=/usr/share/tomcat
export PROJECTS="/usr/share/projects"

export DGWS_CONFIG_DIR='/dg/local/cots/dgcs/appdata/dgwsConfigs'
export JRE_HOME='/etc/alternatives/java_sdk_1.7.0'
#export JAVA_HOME='/etc/alternatives/java'
export JAVA_HOME="$JRE_HOME/jre"
  
export CATALINA_HOME='/dg/local/cots/tomcat'
export LD_LIBRARY_PATH="/dg/local/cots/FWTools/lib:${LD_LIBRARY_PATH}"
export GDAL_DATA='/path/to/your/onlinePortfolio/ingest/factory2dgcs/target/gdal-root/fgs/apps/gdal/data'
  
export MAVEN_VERSION=3
#export MAVEN_OPTS='-Xms512m -Xmx1024m -XX:MaxPermSize=250m -Ddgws.config.dir=/dg/local/cots/dgcs/appdata/dgwsConfigs'
export MAVEN_OPTS="-Xms512m -Xmx2g -Ddgws.config.dir=$DGWS_CONFIG_DIR"
export M2_HOME='/usr/bin/apache-maven-3.3.9/'
 
export PATH="$PATH:$M2_HOME/bin:$JAVA_HOME/bin"
#export PATH="$PATH:$JAVA_HOME/bin"



if [ -f ~/.rc/.alias ]; then
	source ~/.rc/.alias
fi

if [ -f /etc/bash_completion.d/git ]; then
	source /etc/bash_completion.d/git
fi

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
