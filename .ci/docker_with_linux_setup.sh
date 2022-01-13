#!/bin/bash

set -e

trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
trap 'echo "$0: \"${last_command}\" command failed with exit code $?"' ERR

docker build . --file docker/with_linux_setup --tag ctumrs/mrs_uav_system_ls_modules:latest

docker login --username klaxalk --password $TOKEN

docker push ctumrs/mrs_uav_system_ls_modules:latest

WEEK_TAG="`date +%Y`_w`date +%V`"
docker tag ctumrs/mrs_uav_system_ls_modules:latest ctumrs/mrs_uav_system_ls_modules:$WEEK_TAG

docker push ctumrs/mrs_uav_system_ls_modules:$WEEK_TAG
