#!/bin/sh
echo Decompiling framework-res.apk
./apktool.sh "d systemdump/framework/framework-res.apk decompiled_framework/framework-res"

for item in systemdump/framework/*
do 
  JAR=$(echo ${item} | sed 's/systemdump\/framework\///')
  OUT=$(echo $JAR | sed 's/.jar//')
  echo Decompiling $JAR
  ./baksmali.sh "-x ${item} -o decompiled_framework/$OUT"
done
