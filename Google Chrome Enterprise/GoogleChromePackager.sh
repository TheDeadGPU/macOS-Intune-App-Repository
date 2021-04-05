#!/bin/bash
#Author: TheDeadGPU

#Check to see if the macOS Intune Packager is Installed
if test -e "/Applications/IntuneAppUtil"; then
    curl -LOk "https://dl.google.com/dl/chrome/mac/universal/stable/gcem/GoogleChrome.pkg"
    /Applications/IntuneAppUtil -c GoogleChrome.pkg -o .
    rm -rf GoogleChrome.pkg
else
    echo "Intune Packager not installed. Please install the Intune Packager and then run the script again."
fi

