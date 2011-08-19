#!/bin/sh
echo Checking for Transformer on the network...
adb kill-server
adb connect transformer
adb devices | sed -nre "s/.*(5555).*/\success/w .result"

RESULT=`cat .result`
if [ "$RESULT" == "success" ]; then 
  echo Dumping rom over wifi...
else
echo Dumping rom over USB
fi
adb pull system systemdump/