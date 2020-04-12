#!/usr/bin/env bash
#Place this script in project/ios/

# fail if any command fails
set -e
# debug log
set -x

cd ..
git clone -b dev https://github.com/flutter/flutter.git
export PATH=`pwd`/flutter/bin:$PATH

flutter channel stable
# flutter doctor
flutter config --no-analytics

cd ./ios
pod repo update
# pod update Firebase/Core
cd ..

echo "Installed flutter to `pwd`/flutter"

flutter build ios --release --no-codesign