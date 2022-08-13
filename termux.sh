#!/bin/bash
print_center(){
    local x
    local y
    text="$*"
    x=$(( ($(tput cols) - ${#text}) / 2))
    echo -ne "\E[6n";read -sdR y; y=$(echo -ne "${y#*[}" | cut -d';' -f1)
    echo -ne "\033[${y};${x}f$*"
}

run_in_bg() {
    eval "$@" &>/dev/null & disown;
}

echo -e "\033[0;96mInstalling Hikka...\033[0m"

eval "cd ~/ &&
rm -rf Hikka &&
git clone https://github.com/hikariatama/Hikka &&
cd Hikka &&
pip install -U pip &&
pip install -r requirements.txt &&
echo '' > ~/../usr/etc/motd &&
echo 'clear && . <(wget -qO- https://static.hikari.gay/banner.sh) && cd ~/Hikka && python3 -m hikka --port 1242' > ~/.bash_profile"

echo -e "\033[0;96mStarting Hikka...\033[0m"

run_in_bg "python3 -m hikka --port 1242"
sleep 10

clear
clear

printf "\n\e[1;35;47m                   \e[0m"
printf "\n\e[1;35;47m █▄░█ █ █▄░█ █▀█   \e[0m"
printf "\n\e[1;35;47m █░▀█ █ █░▀█ █▄█   \e[0m"
printf "\n\e[1;35;47m                   \e[0m"
printf "\n\n\e[3;34;40m Nino юзербот бот нового поколения\e[0m\n\n"

\033[1;32mHikka is installed!\033[0m
\033[1;32mWeb url: http://localhost:1242\033[0m
"

eval "termux-open-url http://localhost:1242"


