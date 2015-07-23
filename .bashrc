export TOMCAT_HOME=/usr/share/tomcat
export DEV_HOME=/usr/local/projects
export MAVEN_OPTS="-Xms250m -Xmx6g -XX:MaxPermSize=256m"


if [ -f ~/.alias ]; then
	source ~/.alias
fi

if [ -f /etc/bash_completion.d/git ]; then
	source /etc/bash_completion.d/git
fi

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
