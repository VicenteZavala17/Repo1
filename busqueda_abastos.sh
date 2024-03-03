#!/bin/bash

file=Accidentes_ags_2021.csv

echo "ID,AUTOMOVIL"> $file

for acc in $(cat  Accidentes_ags_2021)
do
        salida=$(curl -s -I "$ID" | sed -n -'1p' | tail -1 |awk '{print $3 "" $4}' |rev| cut-c3- |rev)
  if [-z "$salida"]
        echo "$ID,$AUTOMOVIL" >>$file
  fi
done

column -s, -t $file
 