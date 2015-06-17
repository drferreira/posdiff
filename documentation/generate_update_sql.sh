#!/bin/bash
DIR_NAME=$1

SRC_NAME=localhost
SRC_DB=linda
SRC_HOST=localhost

DST_NAME=atena
DST_DB=linda
DST_HOST=atena.linda.ufrgs.br

function generate_backup_schema(){
   echo "Connecting to $2 database at $1 server..."
   if ! pg_dump -U postgres -h $3 -p 5432 -Fp -s -EUTF8 $2 > $DIR_NAME/schema_$1.sql ; then
      echo "Error trying to generate $2 database schema backup from $1 server."
      exit 1
   else
      echo "Generated $2 database schema backup from $1 server."
   fi
   echo ""
}

generate_backup_schema $SRC_NAME $SRC_DB $SRC_HOST

generate_backup_schema $DST_NAME $DST_DB $DST_HOST

if ! java -jar apgdiff-2.4.jar $DIR_NAME/schema_$DST_NAME.sql $DIR_NAME/schema_$SRC_NAME.sql > $DIR_NAME/update_schema.sql ; then
   echo "Error trying to generate database schema update script."
   exit 1
else
   echo "Generated database schema update script"
fi
echo ""
exit 0
