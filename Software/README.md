# Astro Handheld Software Configuration Notes

## Audio Configuration
Bluetooth - https://developer.nvidia.com/embedded/learn/tutorials/connecting-bluetooth-audio 
ARES - Uninstall ps3controller drivers  RetroPie-Setup / manage packages / drivers - uninstall ps3controller
'''
sudo adduser aresuser bluetooth
'''
https://retropie.org.uk/forum/topic/20338/tutorial-bluetooth-audio-on-retropie-v4-4-and-raspberry-pi-3-model-b 

Audio Amp - https://medium.com/@Smartcow_ai/a-jetson-device-for-all-your-audio-applications-6016d3f1dbe7 

> MAX98357A  Board -> Jetson Nano Pins
> LRC -> 35
> DIN -> 40
> BCLK -> 12
> GND -> GND
> VIN -> 3V
> GAIN -> 100K Resistor to VIN (3dB gain)

Missing DTB file? 
'''
sudo cp -v /boot/tegra210-p3448-0000-p3449-0000-a02.dtb /boot/dtb/
'''

## Battery

Initialization Procedure:
Charge: 5V@2A for 8 hours
Stabilize: 1 Hour
Discharge: 1A to 3.0V (stress --cpu 3)
Charge: 5V@2A for 8 hours

## ARES Configuration
[Download](https://drive.google.com/drive/folders/1u76jqUj7gES4nGkd9EwwaGZ9EF99VG0T?usp=sharing) - Login: aresuser thera
Setup - https://retropie.org.uk/docs/First-Installation/
[Adding Themes](https://wiki.recalbox.com/en/tutorials/frontend-customization/add-themes-into-emulationstation)

###Fixing Save States
- git stash, update ARES scripts, remove then reinstall retroarch.
- /opt/ares/configs/all/retroarch/states

###Adding TDP Settings
- Remove MAX from Automagic-fan 
- Add TDP entry to ARES settingsmenu gamelist.xml
- Create empty “power.rp” file
- Add script somewhere? (Copy bgmsetting)
- Add Power Icon

## Disable Updates
'''
sudo apt remove update-manager
pkill update-notifier
sudo chmod -x /usr/bin/update-notifier
'''
https://linuxhint.com/turn-off-snap-ubuntu/ 

## Disable Automatic Suspend
In Desktop search for Power menu, disable suspend.

https://linux-tips.us/how-to-disable-sleep-and-hibernation-on-ubuntu-server/
AND
'''
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 0
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 0
'''

## Emulator Config
###Saturn 
From Retroarena-Setup, install & compile standalone yabause
Error in threads.h - correct to unsigned long
Comment out git line in yabause.sh scritp, add dummy=true and re-install from RetroArena-Setup.

###Duckstation Controls
Download and Install SDL: https://wiki.libsdl.org/SDL2/Installation
Built SDL Tests - run controllermap
Copy map string to gamecontrollerdb.txt in /opt/ares/duckstation/database
Remap in Duckstation Controller Settings

###PPSSPP Controls
Update PPSSPP From RetroArena-Setup
Copy gamecontrollerdb.txt from above to /opt/ares/emulators/ppsspp/assets

