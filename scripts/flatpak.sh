#!/bin/bash

# define important directories and file paths
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
projectDir="$(dirname "$scriptDir")"
manifest="$scriptDir/flatpak/ca.hexiga.hello.yml"
appName="ca.hexiga.hello"

# build the package and make a single-file bundle
flatpak-builder --repo=repo --force-clean build-dir $manifest
flatpak build-bundle $projectDir/repo $projectDir/builds/hello.flatpak ca.hexiga.hello

# clean up the folders created in build process
rm -rf build-dir
rm -rf .flatpak-builder
rm -rf repo