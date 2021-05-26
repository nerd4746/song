#startup_DOSS-SVMS_PRD_SKT-SPAMPWAS2
#!/bin/bash
export JAVA_HOME= #JAVA_HOME path 
export PATH=$JAVA_HOME/bin:$HOME/.local/bin:$HOME/bin:$PATH:
 
# Jenkins Master URL --Choose from below
# Jenkins Master POC   = doss.sktelecom.com/jenkins1
# Jenkins Master Rater = doss.sktelecom.com/jenkins2
# Jenkins Master Swing = doss.sktelecom.com/jenkins3
# Jenkins Master TDE   = doss.sktelecom.com/jenkins4
#JENKINS_HOME=http://doss.sktelecom.com/jenkins1
JENKINS_HOME=http://doss.sktelecom.com/jenkins2
#JENKINS_HOME=http://doss.sktelecom.com/jenkins3
#JENKINS_HOME=http://doss.sktelecom.com/jenkins4
 
#Jenkins Slave Agent Home Dir(Jenkins Master-Remote Dir)
# ex) DOSS-SVMS_PRD_SKT-SPAMPWAS2 Server --/svms/jenkins_agents/DOSS-SVMS_PRD_SKT-SPAMPWAS2
NODE_HOME=/svms/jenkins_agents/DOSS-SVMS_PRD_SKT-SPAMPWAS2
 
#Jenkins Master -- Slave Node Name
# ex) DOSS-SVMS_PRD_SKT-SPAMPWAS2 Server --/svms/jenkins_agents/DOSS-SVMS_PRD_SKT-SPAMPWAS2
NODE_NAME=DOSS-SVMS_PRD_SKT-SPAMPWAS2
 
#Jenkins Slave Agent log Path
# ex) /svms/jenkins_agents/DOSS-SVMS_PRD_SKT-SPAMPWAS2/logs
LOG_DIR=$NODE_HOME/logs
LOG_PATH=$LOG_DIR/jenkins-slave-nohup-$NODE_NAME.log
 
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
 
#Jenkins Master --> Agent Node Secret Infomation
#DOSS Management
SECRET=d7d9ab4ed5c658c220851f940422ce45af046e2c39f9ad1e41f75b5855055ea0
 
# ex) /svms/jenkins_agents/DOSS-SVMS_PRD_SKT-SPAMPWAS2
PID_PATH=$NODE_HOME/pid/$NODE_NAME.pid
CMD="java -jar agent.jar -jnlpUrl $JENKINS_HOME/computer/$NODE_NAME/slave-agent.jnlp -secret $SECRET -workDir=$NODE_HOME"
# Korean Language Set
#CMD="java -jar -Dfile.encoding=UTF-8 agent.jar -jnlpUrl $JENKINS_HOME/computer/$NODE_NAME/slave-agent.jnlp -secret $SECRET -workDir=$NODE_HOME"
 
echo "Jenkins Agent Started."
cd $DIR
nohup $CMD &> $LOG_PATH&
echo $! > $PID_PATH
