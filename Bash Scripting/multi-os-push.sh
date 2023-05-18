#!/bin/bash

USER="devops"

for hosts in `cat multipleos`
do 
  echo
  echo "Connecting to $hosts ..."
  echo
  echo "###################################"
  echo
  echo "pushing script to $hosts ..."
  echo
  scp multi-websetup.sh $USER@$hosts:/tmp/
  echo
  echo "Executing script on $hosts ..."
  ssh $USER@$hosts /tmp/multi-websetup.sh
  ssh $USER@$hosts rm -rf /tmp/multi-websetup.sh

  echo
  echo "###################################"
done
