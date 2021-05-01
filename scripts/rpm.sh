#!/bin/bash

scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
projectDir="$(dirname "$scriptDir")"
rpmDir="$scriptDir/rpm"

# setup rpm build directory structure
mkdir "$rpmDir/BUILD"
mkdir "$rpmDir/RPMS"
mkdir "$rpmDir/SOURCES"
mkdir "$rpmDir/SPECS"
mkdir "$rpmDir/SRPMS"

# place our project source into a tarball and save it under SOURCES


# clean up directories
rm -rf "$rpmDir/BUILD"
rm -rf "$rpmDir/RPMS"
rm -rf "$rpmDir/SOURCES"
rm -rf "$rpmDir/SPECS"
rm -rf "$rpmDir/SRPMS"

