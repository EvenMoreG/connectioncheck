#!/bin/bash

if [[ "$#" -eq  "0" ]]; then
  sleepInterval="random"
else
  sleepInterval=$1
fi

if [[ -d logs ]]; then
  logFile=logs/result.log
else
  logFile=result.log
fi

while [[ true ]];
do
  wget -q --spider http://google.com

  if [ $? -eq 0 ]; then
      echo \{\"timestamp\":\"$(date -Iseconds)\", \"online\":true\} | tee -a $logFile
  else
      echo \{\"timestamp\":\"$(date -Iseconds)\", \"online\":false\}  | tee -a $logFile
  fi

  if [[ $sleepInterval == "random" ]]; then
    sleep $(($RANDOM % 30))
  else
    sleep $sleepInterval
  fi
done
