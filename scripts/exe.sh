#!/bin/bash

scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
projectDir="$(dirname "$scriptDir")"

nim c -d:mingw --outdir:"$projectDir/builds" "$projectDir/src/helloWorld.nim"