# Astro: Jetson Nano Handheld
![IMG_7942](https://github.com/rmeuth01/Astro/assets/5761249/d2a0bce0-cb42-43ca-8d1d-f333351d6111)


## Description
 
The Astro is an open-source gaming handheld based on the Jetson Nano single board computer.  It is designed with the goals of performance, ergonomics, and to be built using off the shelf components and 3D printed parts.  This was designed to fit my personal use case so there are some odd design choices, such as mono-only headphone output and lack of internal speaker.  

## Features

- Jetson Nano SOC
  - Quad-core ARM Cortex-A57 processor (Overclocked to 2.0 GHz)
  - NVIDIA Maxwell GPU with 128  CUDA cores
  - 4 GB LPDDR4
- 800 x 480 (5:3 aspect ratio) IPS display
- 10,000mAh battery, providing up to 6 hours of gameplay
- 5.0GHz IEEE 802.11b/g/n/ac wireless, Bluetooth 4.2
- Mono Audio Output via i2s MAX98357A audio amplifier
- Headphone jack
- USB 2.0 Host port, USB-C Charging Port
- Charging indicator
- 3D Printed housing and buttons.
- D-Pad, Action Buttons, Start, Select, Turbo and Hotkey buttons
- Dual stacked shoulder buttons (L, R, LZ, RZ)
- 2x switch analog sticks
- Mirrored controller PCBs with FFC cables based on ATMEGA32u4 internal USB 2.0 HID controller
- Size: 220mm x 121mm x 40mm, Weight: 639.5g (she chonky)
- Adjustable TDP: 5W, 10W Modes
- Safe software/hardware shutdown to prevent corruption to the SD card data (low voltage shutdown included)
- ARES Operating System ( https://techtoytinker.com/nvidia-jetson-nano )

### Credits

- Astro Designed and Built by Ryan Meuth (rmeuth01 / beernalytic / DocRobot)
- Controller Design and software based on Retro Lite CM4 by Dmcke5 and StonedEdge ( https://github.com/StonedEdge/Retro-Lite-CM4 )
