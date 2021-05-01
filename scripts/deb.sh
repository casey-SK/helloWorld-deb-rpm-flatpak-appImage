
#!/bin/bash

# project specific script to create a deb package

scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
projectDir="$(dirname "$scriptDir")"
programName="helloWorld"

# create a /usr/bin directory and place executable inside
mkdir $projectDir/src/usr
mkdir $projectDir/src/usr/bin
cp $projectDir/src/$programName $projectDir/src/usr/bin

# copy the debian control file to it's expected location
mkdir $projectDir/src/DEBIAN
cp -rf $scriptDir/debian/control $projectDir/src/DEBIAN

# Set root permissions, run packager, and then revert permissions
sudo chown -R 0:0 $projectDir/src/
dpkg -b $projectDir/src $projectDir/builds/hello.deb
sudo chown --from=0:0 $USER * $projectDir/src/ -R

# delete the /usr/bin directory
rm -rf $projectDir/src/usr
rm -rf $projectDir/src/DEBIAN

# delete the debain specific files
rm -rf $projectDir/src/DEBIAN