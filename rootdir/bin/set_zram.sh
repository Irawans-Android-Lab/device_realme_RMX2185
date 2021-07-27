#! /vendor/bin/sh

# Setup ZRAM Based On Available Ram
MemTotalStr=`cat /proc/meminfo | grep MemTotal`
MemTotal=${MemTotalStr:16:8}
echo 1 > /sys/block/zram0/reset
echo 'zstd' > /sys/block/zram0/comp_algorithm
sleep 0.5
if [ $MemTotal -le 3145728 ]; then
  #config 1.6GB zram size with memory less or equals to 3 GB
  echo 1717986918 > /sys/block/zram0/disksize
  echo 180 > /proc/sys/vm/swappiness
  echo 0 > /proc/sys/vm/direct_swappiness
else
  #config 2GB zram size with memory less or equals to 4 GB
  echo 2147483648 > /sys/block/zram0/disksize
  echo 160 > /proc/sys/vm/swappiness
  echo 60 > /proc/sys/vm/direct_swappiness
fi
sleep 0.5
mkswap /dev/block/zram0
sleep 0.5
swapon -d /dev/block/zram0
