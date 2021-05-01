#!/bin/bash

scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
projectDir="$(dirname "$scriptDir")"

# move the appropriate files into src dir
cp "$projectDir/scripts/appimage/AppRun" "$projectDir/src"
cp "$projectDir/scripts/appimage/helloWorld-icon.png" "$projectDir/src"
cp "$projectDir/scripts/appimage/helloWorld.desktop" "$projectDir/src"
cp "$projectDir/scripts/appimage/tempenv.sh" "$projectDir/src"

# detect machine's architecture
export ARCH=$(uname -m)


# the build command itself:
$scriptDir/appimage/appimagetool-x86_64.AppImage "$projectDir/src"

# move result in build folder
mv $projectDir/helloworld-appimage-$ARCH.AppImage builds

# remove the build dir
rm -rf build

# remove copied files
rm -rf "$projectDir/src/AppRun"
rm -rf "$projectDir/src/helloWorld-icon.png" 
rm -rf "$projectDir/src/helloWorld.desktop" 
rm -rf "$projectDir/src/tempenv.sh" 
rm -rf "$projectDir/src/.DirIcon" 