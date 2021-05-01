#!/bin/bash

scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# runs all build scripts
bash "$scriptDir/deb.sh"
bash "$scriptDir/flatpak.sh"
bash "$scriptDir/appimage.sh"
bash "$scriptDir/exe.sh"
#bash "$scriptDir/rpm.sh"