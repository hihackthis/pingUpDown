#!/usr/bin/env bash


# :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) 
# Script        : pingUpDown.sh
# Version       : 1.0
# Description   : This script use ping command to discoved if the host is alive or not.
# Args          : Relative or absolute file path
# Author        : Diego Moicano (a.k.a hihackthis)
# Date          : 12/12/2021
# SO            : Debian GNU/Linux 10 (buster)
# Run           : $ chmod +x pingUpDown.sh
#               : $./pingUpDown.sh /PATH/FILE
# :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-) :-)


#Colors Pallet

BOLD_RED="\e[1;31m"
BOLD_GREEN="\e[1;32m"
BOLD_PURPLE="\e[1;35m"
BOLD="\e[1m"
BLINK="\e[5m"
ENDCOLOR="\e[0m"


#Function script name

function name() {
    echo -e "${BOLD}          _                   _    _           _____                             "
    echo -e "         (_)                 | |  | |         |  __ \                            "
    echo -e "  _ __    _   _ __     __ _  | |  | |  _ __   | |  | |   ___   __      __  _ __  "
    echo -e " | '_ \  | | | '_ \   / _\` | | |  | | | '_ \  | |  | |  / _ \  \ \ /\ / / | '_ \ "
    echo -e " | |_) | | | | | | | | (_| | | |__| | | |_) | | |__| | | (_) |  \ V  V /  | | | |"
    echo -e " | .__/  |_| |_| |_|  \__, |  \____/  | .__/  |_____/   \___/    \_/\_/   |_| |_|"
    echo -e " | |                   __/ |          | |                                        "
    echo -e " |_|                  |___/           |_|                                        ${ENDCOLOR}"
    echo " "
    bars
    echo -e "By Diego Moicano (a.k.a hihackthis)"
}

#Function progress bars
#Based, https://www.linuxjournal.com/content/how-add-simple-progress-bar-shell-script

function bars() {
    echo -ne "[\e[1;34m###                       ]\r"
    # some task
    sleep 0.1
    echo -ne "[#######                   ]\r"
    # some task
    sleep 0.1
    echo -ne "[##############            ]\r"
    # some task
    sleep 0.1
    echo -ne "[#######################   ]\r"
    # some task
    sleep 0.1
    echo -ne "[##########################\e[0m]\r"
    echo -ne '\n'

    echo -ne "[\e[1;33m                       ###]\r"
    # some task
    sleep 0.1
    echo -ne "[                   #######]\r"
    # some task
    sleep 0.1
    echo -ne "[            ##############]\r"
    # some task
    sleep 0.1
    echo -ne "[   #######################]\r"
    # some task
    sleep 0.1
    echo -ne "[##########################\e[0m]\r"
    echo -ne '\n'
}

#Gets the absolute path of the filename

FILE=$1

#Clear screen and call program name
clear
name

#Checks if the file is readable

if [[ -r $1 && -f $1 ]];
then
	echo -e "\n${BLINK}Checking${ENDCOLOR}"

	while IFS= read -r line
	do
		echo " "

		#Checks the ping value before "received" word if is 1 (up) or 0 (down)
		VALUE=$(ping -w 1 -c 1 $line | grep -i "received" | cut -d " " -f 4)
		if [ $VALUE -ne 0 ];
			then
				echo -e "${BOLD}$line${ENDCOLOR} is ${BOLD_GREEN}Up${ENDCOLOR}"
		else
			echo -e "${BOLD}$line${ENDCOLOR} is ${BOLD_RED}Down${ENDCOLOR}"
		fi
	done < "$FILE"
else
	#Warn if the file is not readable
	echo -e "${BOLD_PURPLE}File does not have read permission or does not exist!${ENDCOLOR}"
fi

# End of Script
