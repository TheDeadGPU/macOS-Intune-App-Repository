#!/bin/bash
#Author: TheDeadGPU

#Check to see if the macOS Intune Packager is installed
if test -e "/Applications/IntuneAppUtil"; then
    curl -LOk "https://download-installer.cdn.mozilla.net/pub/firefox/releases/87.0/mac/en-US/Firefox%2087.0.pkg"
    mv "Firefox%2087.0.pkg" "Firefox87.0.pkg"
    /Applications/IntuneAppUtil -c Firefox87.0.pkg -o .
    rm -rf "Firefox87.0.pkg"
else
    echo "Intune Packager not installed. Please install the Intune Packager and then run the script again."
fi
