#!/bin/bash

read -p 'Please enter a username: ' user
read -p 'Now enter a group: ' group

id "$user" &> /dev/null
status1=$?
groups "$group" &> /dev/null
status2=$?
id "$user" 2>&1 /dev/null | grep "$group" &> /dev/null
status3=$?

combo=$(($status1 + $status2))
if [ $combo -eq 2 ];
    then
        echo "Both are not found - why are you even asking me this?"
    fi
if [ $combo -eq 1 ];
    then
        echo "One exists, one does not. You figure out which."
    fi
if [[ $status3 -eq 0 && $combo -eq 0 ]];
    then
        echo "Membership Valid!"
elif [[ $status3 -eq 1 && $combo -eq 0 ]];
    then
        echo "Membership invalid but available to join."
fi
