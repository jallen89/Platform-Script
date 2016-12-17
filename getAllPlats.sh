#!/bin/bash
platform_template="platforms;android-"


#Check if ANDROID_HOME set.
: "${ANDROID_HOME:?ANDROID_HOME is not set.}"

# Get all platforms.
for i in {1..25}; do 
	cmd="$ANDROID_HOME/tools/bin/sdkmanager \"$platform_template$i\""
	echo $cmd
	eval $cmd
done