#!/bin/bash
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
FREE=$(free -m | grep "Mem" | awk '{printf "%.2f%%", ($4 * 100) / 7798}')
USED=$(free -m | grep "Mem" | awk '{printf "%.2f%%", ($3 * 100) / 7798}')
COUNT=$(df -hm | wc -l)
CPU5=$(ps -eo comm,%cpu --no-headers | awk '{arr[$1]+=$2} END {for (i in arr) printf "%s\t%.1f%%\n", i, arr[i]}' | sort -k2 -nr | head -n 5)
MEM5=$(ps -eo comm,%mem --no-headers | awk '{arr[$1]+=$2} END {for (i in arr) printf "%-20s\t%.1f%%\n", i, arr[i]}' | sort -k2 -nr | head -n 5)
echo "CPU Usage: $CPU%"
echo "-------------------"
echo "Free Memory: $FREE | Used Memory: $USED"
echo "-------------------"
echo -e "Filesystem\t Used\t     Free\t      Mounted On "
echo "-------------------"
for((i=2; i<=COUNT; i++))
do
  DUA=$(df -hm | sed -n "${i}p" | awk '{printf "%.2f%%", ($3*100)/$2}') 
  DUB=$(df -hm | sed -n "${i}p" | awk '{printf "%.2f%%", ($4*100)/$2}')
  DUC=$(df -hm | sed -n "${i}p" | awk '{print $1}') 
  DUD=$(df -hm | sed -n "${i}p" | awk '{print $6}')
  echo -e "  $DUC \t $DUA\t    $DUB \t $DUD"
done
echo "-------------------"
echo "Top CPU Usage:"
echo -e "App\t\t CPU%"
echo "$CPU5"
echo "-------------------"
echo "Top Memory Usage:"
echo -e "App\t\t\t MEM%"
echo "$MEM5"


