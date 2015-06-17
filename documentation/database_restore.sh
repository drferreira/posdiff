#!/bin/bash
DIR_NAME=$1
DB_NAME=linda
BKP_NAME=linda_bkp

echo "Restoring $DB_NAME database backup."
echo ""
if sudo -u postgres psql -d $BKP_NAME -c "select 1;" > tmp.txt ; then
   echo "The $BKP_NAME database already exists. Trying to recreate it."
   rm -f tmp.txt
   if ! sudo -u postgres dropdb $BKP_NAME ; then
      echo "Error trying to remove $BKP_NAME databse."
      exit 1
   else
      echo "Database $BKP_NAME removed."
   fi
fi
echo ""
echo "Trying to create $BKP_NAME database."
if ! sudo -u postgres createdb $BKP_NAME ; then
   echo "Error trying to create $BKP_NAME database"
   exit 1
else
   echo "Database $BKP_NAME created."
fi
echo ""
echo "Trying to restore $DB_NAME backup into $BKP_NAME database."
if ! sudo -u postgres pg_restore -d $BKP_NAME $DIR_NAME/${DB_NAME}_full.backup ; then
   echo "Error trying to restore $DB_NAME database backup."
   echo ""
   exit 1
else
   echo "Restored $DB_NAME backup at $BKP_NAME database."
   echo ""
fi
exit 0
