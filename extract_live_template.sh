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
CUR=`pwd`

pushd ${AS_TEMPLATE}
ls *.xml | xargs -n1 -I {} cp {} ${CUR}/templates
popd

git add templates
