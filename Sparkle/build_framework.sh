#!/bin/bash

DIR=$(dirname ${0})
cd ${DIR}
git submodule init && git submodule update
cd 3rdparty/Sparkle
git submodule init && git submodule update
# xcodebuild -configuration Release -target Sparkle
xcodebuild -scheme Distribution -configuration Release -derivedDataPath build
