#!/bin/bash
awk -F ',' '{print $1, $13}' Accidentes_ags_2021.csv
