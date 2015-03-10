#!/bin/bash

while true
do

   proc_num=$(pidof httpd | wc -w)

   if [ $proc_num -lt 10 ]; then
      echo "[LOW] Web Server OK!"
   elif [ $proc_num -gt 20 ] && [ $proc_num -le 100 ]; then
      echo "[HIGH] Web Server Working hard!"
   elif [ $proc_num -gt 100 ]; then
      echo "[CRITICAL] Web Server under heavy load, restart required"
      service httpd restart
   fi

   sleep 30

done
