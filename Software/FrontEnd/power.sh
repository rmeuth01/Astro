#!/usr/bin/env bash

# This file is part of ARES by The RetroArena
#
# ARES is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/Retro-Arena/RetroArena-Setup/master/LICENSE.md
#
# Core script functionality is based upon The RetroPie Project https://retropie.org.uk Script Modules
#

rp_module_id="power"
rp_module_desc="Change TDP Setting."
rp_module_section="config"

function gui_power() {
    local cmd=(dialog --backtitle "$__backtitle" --menu "Power" 22 86 16)
    local options=(
        1 "5W TDP"
        2 "10W TDP"
        3 "MAX TDP"
    )
    local choice=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
    if [[ -n "$choice" ]]; then
        case "$choice" in
            1)
                sudo jetson_clocks --restore
                sudo nvpmodel -m 1
                printMsgs "dialog" "TDP is now set to 5W."
                ;;
            2)
                sudo jetson_clocks --restore
                sudo nvpmodel -m 0
                printMsgs "dialog" "TDP is now set to 10W."
                ;;
            3)
            	sudo nvpmodel -m 0
            	sudo jetson_clocks
            	printMsgs "dialog" "TDP is now set to MAX."
            	;;
        esac
    fi
}
