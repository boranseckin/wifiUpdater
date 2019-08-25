# wifiUpdater
WiFi location updater for MacOS. 

## Description
The script is called everytime a change is happened to AirPort. A [launchd](https://www.launchd.info/) task checks the AirPort preferences for an update. If an update occurs, [wifiUpdater.sh](wifiUpdater.sh) script runs and selects the appropriate location.

## Usage
Enable

```/bin/launchctl load /Users/boran/Library/Mobile\ Documents/com~apple~CloudDocs/Cydia/com.boranseckin.wifiUpdater.plist```

Disable

```/bin/launchctl unload /Users/boran/Library/Mobile\ Documents/com~apple~CloudDocs/Cydia/com.boranseckin.wifiUpdater.plist```
