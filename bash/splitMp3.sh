#!/bin/bash

echo "处理当前目录的mp3文件，并去掉指定妙数的文件结尾,另存到cut目录"
end=5

for d in */; do
  cd "$d"
  [ ! -d ./cut ] && mkdir cut
  for i in  [^new-]*.mp3 ; do
      [  -f ./cut/$i ] && continue
      nohup ffmpeg -i "$i"  > temp.log  2>&1
      time="`cat temp.log | grep Duration: | awk  '{print $2}'|awk -F "," '{print $1 }' | xargs`"
      echo $time
      hour="`echo $time|awk -F ":" '{print $1}'`"
      min="`echo $time|awk -F ":" '{print $2}'`"
      sec="`echo $time|awk -F ":" '{print $3}'|awk -F "." '{print $1}'`"
      echo "$hour-$min-$sec"
      num1=`expr $hour \* 3600`
      num2=`expr $min \* 60`
      num3=$sec
      sum=`expr $num1 + $num2 + $num3`
      echo $sum
      newtime=`expr $sum - $end`
      echo $newtime
      ffmpeg -ss 00:00:00 -i $i -t $newtime -c:v copy -c:a copy ./cut/$i
  done
  cd ..
done