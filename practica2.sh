#! /bin/bash
nombre_archivo=cpu.log
directorio=$PW/cpu.log

cd $directorio
if !(find $nombre_archivo)
then
        touch $nombre_archivo
fi
while true; do
echo -e "$(date +%d/%m/%Y-%H:%M:%S)\t$(hostname -A)\t$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}')\t$(free -m | awk '/Mem/{print int($3/$2*100)}') " >> $nombre_archivo
      sleep 2
done
