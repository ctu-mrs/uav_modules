#!/bin/bash

set -e

trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
trap 'echo "$0: \"${last_command}\" command failed with exit code $?"' ERR

# get the path to this script
MY_PATH=`dirname "$0"`
MY_PATH=`( cd "$MY_PATH" && pwd )`

subinstall_params=""

default=y
while true; do
  [[ -t 0 ]] && { read -t 10 -n 2 -p $'\e[1;32mDo you want to run unattended mode created for UAV drone system installation? [y/n] (default: '"$default"$')\e[0m\n' resp || resp=$default ; }
  response=`echo $resp | sed -r 's/(.*)$/\1=/'`

  if [[ $response =~ ^(y|Y)=$ ]]
  then
    echo "Installing in unattended mode"
    unattended=1
    subinstall_params="--unattended"
    break
  elif [[ $response =~ ^(n|N)=$ ]]
  then
    break
  else
    echo " What? \"$resp\" is not a correct answer. Try y+Enter."
  fi
done

cd "$MY_PATH"
gitman install

## | -------------------- install realsense ------------------- |
# bash $MY_PATH/../ros_packages/realsense_d435/scripts/install_realsense_d435.sh $subinstall_params

## | --------------------- install nimbro --------------------- |
bash $MY_PATH/../ros_packages/nimbro_network/install/install.sh $subinstall_params

## | ----------------- install mrs_optic_flow ----------------- |
bash $MY_PATH/../ros_packages/mrs_optic_flow/install/install_intel.sh $subinstall_params

## | --------------------- install bluefox -------------------- |
bash $MY_PATH/../ros_packages/bluefox2/install/install.sh $subinstall_params

## | ----- Generate ssh config and /etc/hosts ----------------- |

default=y
while true; do
  if [[ "$unattended" == "1" ]]
  then
    resp=$default
  else
    [[ -t 0 ]] && { read -t 10 -n 2 -p $'\e[1;32mGenerate ssh config and /etc/hosts? [y/n] (default: '"$default"$')\e[0m\n' resp || resp=$default ; }
  fi
  response=`echo $resp | sed -r 's/(.*)$/\1=/'`

  if [[ $response =~ ^(y|Y)=$ ]]
  then
    ~/mrs_workspace/src/uav_core/miscellaneous/dotssh/generate_ssh_config.sh
    break
  elif [[ $response =~ ^(n|N)=$ ]]
  then
    break
  else
    echo " What? \"$resp\" is not a correct answer. Try y+Enter."
  fi
done

echo "$0: Done"
