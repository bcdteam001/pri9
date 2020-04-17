#!/bin/sh
bzip2 -c9k ./Packages > ./Packages.bz2 ./Packages.gz
printf "Origin: KidsFunny\nLabel: KidsFunny\nSuite: stable\nVersion: 9.0\nCodename: iOS\nArchitecture: iphoneos-arm\nComponents: main\nDescription: KidsFunny 9.0 iOS\nMD5Sum:\n "$(cat ./Packages | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages)" Packages\n "$(cat ./Packages.bz2 | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages.bz2)" Packages.bz2\n "$(cat ./Packages.gz | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages.gz)" Packages.gz\n" >Release;
exit 0
