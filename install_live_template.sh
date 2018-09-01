#!/usr/bin/env bash

config=local_config.txt
if [ -f ${config} -a -e ${config} ]
then
    echo 'AS Preference location on: ' `cat local_config.txt`
    echo ''
else
    echo ${config} 'does not exists!'
    exit -1
fi

AS_TEMPLATE=`cat local_config.txt`
ls templates | xargs -n1 -I {} cp templates/{} ${AS_TEMPLATE}
