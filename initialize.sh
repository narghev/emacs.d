#!/bin/sh

packages="./elispScripts/packages.el";
init="/home/$(whoami)/.emacs.d/init.el";

colorRed=`tput setaf 1`;
colorGreen=`tput setaf 2`;
colorYellow=`tput setaf 3`
colorBlue=`tput setaf 4`;
colorMagenta=`tput setaf 5`;
colorCyan=`tput setaf 6`;
colorWhite=`tput setaf 7`;
colorReset=`tput sgr0`;

modeBold=`tput bold`;    # Select bold mode
modeDim=`tput dim`;      # Select dim (half-bright) mode
modeSmul=`tput smul`;    # Enable underline mode
modeRmul=`tput rmul`;    # Disable underline mode
modeRev=`tput rev`;      # Turn on reverse video mode
modeSmso=`tput smso`;    # Enter standout (bold) mode
modeRmso=`tput rmso`;    # Exit standout mode

bold(){
    echo -n "${modeBold}";
}

yellow(){
    echo -n "${colorYellow}";
}

red(){
    echo -n "${colorRed}";
}

cyan(){
    echo -n "${colorCyan}";
}

reset(){
    echo -n "${modeRmso}${colorReset}";
}

textStyling(){
    yellow;
    bold;
}

err(){
    bold;
    red;
}

fileTextStyling(){
    bold;
    cyan;
}

if (!(which "emacs"))
then
    err;
    echo "emacs is NOT installed.";
    echo "install emacs and run the script again.";
    reset;
    exit 1;
fi

textStyling;
echo "Emacs is installed, continuing the script.";
reset;

if [ -e $init ]
then
    textStyling;
    echo -n "$init file already exists, do you want to overwrite it? (y/n) ";
    reset;
    bold;
    read answer;
    reset;
    if [ "$answer" = "y" ];
    then
	textStyling;
	echo "Copying init.el to $init";
	cp ./init.el $init;
	reset;
    else
	err;
	echo "Aborting!!!";
	reset;
	exit 1;
    fi
fi

if [ -e $packages ]
then
    if [ -e $init ]
    then
	 textStyling;
	 echo "Loading packages.el file to emacs.";
	 reset;
	 err;
	 echo "${modeSmul}The path to install fonts - /home/$(whoami)/.local/share/fonts";
	 reset;
	 fileTextStyling;
	 emacs --script $packages;
	 reset;
    else
	err;
	echo "$init file not found, aborting!!!";
	reset;
	exit 1;
    fi
else
    err;
    echo "$packages file does not exist, aborting!!!";
    reset;
    exit 1;
fi
