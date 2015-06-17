#!/bin/bash
DIR_NAME=$1
DB_NAME=linda

echo "Generating $DB_NAME database backup."
if ! sudo -u postgres pg_dump -Fc -v -EUTF8 $DB_NAME > $DIR_NAME/${DB_NAME}_full.backup 2> temp.txt; then
   echo "Error trying to generate $DB_NAME database backup."
   echo ""
   exit 1
else
   echo "Database backup generated."
   echo ""
fi
rm -f temp.txt
exit 0
