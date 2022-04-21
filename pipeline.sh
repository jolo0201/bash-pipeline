#!/bin/bash

var="$(cat ./log.csv | grep "Joe" | wc -l)"
echo $var
if [[ $var -gt 5 ]]
then
    cat ./log.csv | grep "Joe" | sort
else
     echo "None"
fi