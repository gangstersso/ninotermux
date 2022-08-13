#!/bin/bash
print_center(){
    local x
    local y
    text="$*"
    x=$(( ($(tput cols) - ${#text}) / 2))
    echo -ne "\E[6n";read -sdR y; y=$(echo -ne "${y#*[}" | cut -d';' -f1)
    echo -ne "\033[${y};${x}f$*"
}

clear
clear

printf "\n\e[1;35;47m                   \e[0m"
printf "\n\e[1;35;47m █▄░█ █ █▄░█ █▀█   \e[0m"
printf "\n\e[1;35;47m █░▀█ █ █░▀█ █▄█   \e[0m"
printf "\n\e[1;35;47m                   \e[0m"
printf "\n\n\e[3;34;40m Nino юзербот бот нового поколения\e[0m\n\n"

\033[1;32mNino is running!\033[0m
\033[1;32mWeb url: http://localhost:1242\033[0m
"
