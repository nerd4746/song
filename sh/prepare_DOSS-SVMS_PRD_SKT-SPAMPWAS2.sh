#prepare_DOSS-SVMS_PRD_SKT-SPAMPWAS2
#!/bin/bash
#Jenkins Slave Agent Home Dir(Jenkins Master-Remote Dir)
# ex) DOSS-SVMS_PRD_SKT-SPAMPWAS2 Server --/svms/jenkins_agents/DOSS-SVMS_PRD_SKT-SPAMPWAS2
NODE_HOME=/svms/jenkins_agents/DOSS-SVMS_PRD_SKT-SPAMPWAS2
 
SCRIPT_HOME=$NODE_HOME/scripts
FILE_AGENT=agent.jar
FILE_START=startup_DOSS-SVMS_PRD_SKT-SPAMPWAS2.sh
FILE_SHUTDOWN=shutdown_DOSS-SVMS_PRD_SKT-SPAMPWAS2.sh
 
echo "Jenkins Agent Pre-requisites : [$FILE_AGENT, $FILE_START, $FILE_SHUTDOWN]"
echo "==> 1. make directories "
mkdir -p $SCRIPT_HOME
mkdir -p $NODE_HOME/pid
mkdir -p $NODE_HOME/logs
echo "        :  SCRIPT_HOME, NODE_HOME/pid, NODE_HOME/logs are created."
 
echo "==> 2. move start/stop script into  $SCRIPT_HOME/"
mv $FILE_START $SCRIPT_HOME/
mv $FILE_SHUTDOWN $SCRIPT_HOME/
mv $FILE_AGENT $SCRIPT_HOME/
chmod 755 $SCRIPT_HOME/$FILE_START
chmod 755 $SCRIPT_HOME/$FILE_SHUTDOWN
chmod 755 $SCRIPT_HOME/$FILE_AGENT
 
echo "==> Ready to start Jenkins Agent."
echo "To proceed next step, type command : cd $SCRIPT_HOME"
exit 0
