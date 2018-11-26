#!/bin/bash

RPM="/bin/rpm"
RPM_OPT="--rebuilddb -v -v"
YUM="/bin/yum"
YUM_OPT_1="clean all"
YUM_OPT_2="update"
RM="/bin/rm"
RM_OPT="-rf"

FILES="
/var/lib/rpm/__db*
/var/lib/rpm/.rpm.lock
/var/lib/rpm/.dbenv.lock
/var/lib/rpm/__*
/var/cache/yum
"

function clean_stuck()
{
  for FILE in ${FILES[@]}; do
    ${RM} ${RM_OPT} ${FILE}
  done

  ${RPM} ${RPM_OPT}
}

function yum_update()
{
  ${YUM} ${YUM_OPT_1}
  ${YUM} ${YUM_OPT_2}
}

clean_stuck
yum_update