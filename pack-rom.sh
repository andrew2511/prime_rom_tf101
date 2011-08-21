#!/bin/sh
#	
#	
#
#	
#
#	
#
#
./install-framework.sh
for item in framework/*
do 
  FWF=$(echo ${item} | sed 's/framework\///')
  FWOUT=system/${item}
  if [ $FWF != "framework-res" ]; then
    FWDEX=$FWOUT/classes.dex
    ORG=systemdump/framework/$FWF.jar
    mkdir $FWOUT -p
    echo Compiling $FWF to $FWDEX
    ./smali.sh "${item} -o $FWDEX -V"
	cp $ORG system/framework/
	cd $FWOUT
    7z a -tzip ../$FWF.jar classes.dex -mx0 -y
	cd ..
	rm -r $FWF
	cd ../..
  else
    ./apktool.sh "b ${item} $FWOUT.apk"
    7z x systemdump/framework/framework-res.apk -osignature/framework-res -y
	cd signature/framework-res
	7z a -tzip ../../$FWOUT.apk META-INF -mx0 -y
	echo META-INF Done
	7z a -tzip ../../$FWOUT.apk AndroidManifest.xml -mx0 -y
	echo AndroidManifest.xml Done
	cd ../..
	# tidying up
    rm -r signature/framework-res
	echo Finished Compiling framework-res.apk
  fi
done
for item in app/*
do 
  APP=$(echo ${item} | sed 's/app\///')
  APK=$APP.apk
  echo Compiling $APP
  ./apktool.sh "b ${item} system/app/$APK"
done
for item in system/app/*
do 
  APK=$(echo ${item} | sed 's/system\/app\///')
  ORG=systemdump/app/$APK
  OUT=signature/$(echo $APK | sed 's/.apk//')
# Extracting original signature from $APK
  7z x $ORG -o$OUT -y
  cd $OUT
# applying signature to new application
  7z a -tzip ../../${item} META-INF -mx0 -y
  echo META-INF Done
  7z a -tzip ../../${item} AndroidManifest.xml -mx0 -y
    echo AndroidManifest Done
  cd ../..
# tidying up
  rm -r $OUT
done
