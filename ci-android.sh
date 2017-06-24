#!/bin/bash

wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip
unzip -o sdk-tools-linux-3859397.zip -d $ANDROID_HOME
rm -f "$ANDROID_HOME/tools/lib/common.jar"
git clone https://github.com/mherod/android-sdk-licenses.git $ANDROID_HOME/licenses
sh -c "$ANDROID_HOME/tools/bin/sdkmanager 'extras;android;m2repository'"
sh -c "$ANDROID_HOME/tools/bin/sdkmanager 'extras;google;m2repository'"
sh -c "$ANDROID_HOME/tools/bin/sdkmanager --update --channel=3 --include_obsolete"