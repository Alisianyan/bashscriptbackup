#!/usr/bin/env bash
#example ./fix-ipl.sh file.csv ft2-ipl-api.aws.humans.dc:8080

CSV=$1
OLDIFS=$IFS
IFS=','

[ ! -f "$CSV" ] && {
  echo "$CSV file not found"
  exit 99
}

while read userId imsi newMsisdn currentMsisdn; do

done <$CSV

IFS=$OLDIFS