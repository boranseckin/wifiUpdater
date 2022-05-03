#!/bin/zsh

SSID=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep ' SSID' | cut -d : -f 2- | sed 's/^[ ]*//'`
currentLocation=`/usr/sbin/networksetup -getcurrentlocation`

if [ "$SSID" = "COGECO-522D0" ];
then
    location="Home"
else
    location="Automatic"
fi

if [ "$currenctLocation" != "$location" ] ;
then
    /usr/sbin/networksetup -switchtolocation $location
    echo "| $location | $(date)"
fi

