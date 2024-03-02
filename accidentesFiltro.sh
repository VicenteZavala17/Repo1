#!/bin/bash
awk -F ',' '$45 =="AGUASCALIENTES" {print $1, $23}' Accidentes_ags_2021.csv
