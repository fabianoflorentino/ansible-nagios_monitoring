#!/bin/bash

# VARIAVEIS
export ORACLE_SID=
export ORACLE_HOME=/u01/app/oracle/product/11.2.0.4/dbhome_1
export NLS_LANG=american_america.AL32UTF8
export NLS_DATE_FORMAT=DD.MM.YYYY-HH24:MI:SS

ORAENV_ASK=NO
USER_ORACLE_DIR=/db/backup/checklist
LOG_STANDBY=$USER_ORACLE_DIR/2com_sequencia_es.log

# CODIGO ORACLE
LOG_PRIMARY=`$ORACLE_HOME/bin/sqlplus -silent omd/omdspring@${ORACLE_SID} <<EOF
select max(sequence#) from v\\$archived_log;
EOF`


# CODIGO SO
RESULT_PRIMARY=`echo "$LOG_PRIMARY" | sed 's/MAX(SEQUENCE#)//g'`
RESULT_PRIMARY=`echo "$LOG_PRIMARY" | sed -n 4p`
RESULT_STANDBY=`tail -n1 $LOG_STANDBY | cut -d":" -f2`
RESULT_TRAT_PRIMARY=`echo "$RESULT_PRIMARY" | sed 's/ //g'`
RESULT_TRAT_STANDBY=`echo "$RESULT_STANDBY" | sed 's/ //g'`

MINUS=`echo "$RESULT_TRAT_PRIMARY - $RESULT_TRAT_STANDBY" | bc`
  
if [ $RESULT_TRAT_PRIMARY == $RESULT_TRAT_STANDBY ]
then
    echo "0 Check_Standby_Sync result=0;1;2;0;2 OK - GAP Primary: ($RESULT_TRAT_PRIMARY) \
	GAP Standby: ($RESULT_TRAT_STANDBY) Archive Applied Sucess In Standby "

	exit 0

elif [  $MINUS -le  4 ]
then
	echo "1 Check_Standby_Sync result=1;1;2;0;2 WARN - GAP Primary: ($RESULT_TRAT_PRIMARY) \
	GAP Standby: ($RESULT_TRAT_STANDBY) Archive not Applied In Standby "

	exit 1

elif [ $MINUS -ge 5 ]
then
	echo "2 Check_Standby_Sync result=2;1;2;0;2 CRIT - GAP Primary: ($RESULT_TRAT_PRIMARY) \
	GAP Standby: ($RESULT_TRAT_STANDBY) Archive not Applied In Standby "

    exit 2

else
    echo "3 Check_Standby_Sync result=3;1;2;0;2 UNKNOWN - Plugin Com Problemas!!"
    exit 3

fi

exit