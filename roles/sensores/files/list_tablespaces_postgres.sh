#!/bin/bash

LOGICAL=`psql -U postgres -w -h 127.0.0.1 -d postgres -c "SELECT pg_size_pretty(pg_database_size('ef_access'))"`
DATAFILE=`psql -U postgres -w -h 127.0.0.1 -d postgres -c "SELECT pg_size_pretty(pg_tablespace_size('pg_default'))"`

TRAT_LOGICAL=`echo $LOGICAL | sed 's/pg_size_pretty//g' | sed 's/MB//g' | sed 's/-//g' | sed 's/(1 row)//g'`
TRAT_DATAFILE=`echo $DATAFILE | sed 's/pg_size_pretty//g' | sed 's/MB//g' | sed 's/-//g' | sed 's/(1 row)//g'`

echo "DATAFILE TABLESPACE_DATA" $TRAT_DATAFILE "LOGFILE" TABLESPACE_LOG $TRAT_LOGICAL

exit