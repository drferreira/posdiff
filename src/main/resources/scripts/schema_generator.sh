#!/bin/bash
RESULT_DIR=$1
DATABASE_NAME = $2
DATABASE_URL = $3

SRC_NAME=localhost
SRC_DB=cw
SRC_HOST=localhost

DST_NAME=ccem
DST_DB=cw
DST_HOST=ccem.ufrgs.br

function generate_backup_schema(){
   if ! pg_dump -U postgres -h $DATABASE_URL -p 5432 -Fp -s -EUTF8 $DATABASE_NAME > $RESULT_DIR/schema_$DATABASE_NAME.sql ; then
      exit 1
   else
   fi
}
