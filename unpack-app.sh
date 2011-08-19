#!/bin/sh
for item in systemdump/app/*
do 
  APK=$(echo ${item} | sed 's/systemdump\/app\///')
  OUT=$(echo $APK | sed 's/.apk//')
  echo Decompiling $APK
  ./apktool.sh "d ${item} decompiled_app/$OUT"
done

