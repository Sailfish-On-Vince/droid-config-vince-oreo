#!/bin/bash

# tmp hack for user groups
groups="system ssu input"
for gp in $groups;
do
  /usr/bin/id nemo|grep $gp
  if [ "$?" -ne "0" ]; then
    /usr/sbin/usermod -a -G $gp nemo
  fi
done
