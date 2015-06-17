#!/bin/bash
USER=luciano
HOST=hera.linda.ufrgs.br

FILE_NAME=linda-ear-0.0.1-SNAPSHOT.ear
SRC_PATH=/opt/linda/jboss-as-7.1.1.Final/standalone/deployments/
DST_PATH=$1

DEPLOY_PATH=/opt/linda/jboss-as-7.1.1.Final/standalone/deployments/
BKP_NAME=linda-ear-0.0.1-SNAPSHOT.backup

echo "Connecting to server to copy $FILE_NAME..."
if ! scp $USER@$HOST:${SRC_PATH}${FILE_NAME} $DST_PATH ; then
   echo "Error trying to copy $FILE_NAME from $HOST."
   echo ""
   exit 1
else
   echo "File $FILE_NAME copied from $HOST."
   echo ""
   if ! cp ${DEPLOY_PATH}${FILE_NAME} $DST_PATH/$BKP_NAME ; then
      echo "Error trying to backup current $FILE_NAME from this server."
      echo ""
      exit 1
   else
      echo "Backup of current $FILE_NAME is done."
   fi
fi
echo ""
exit 0
