#!/bin/zsh
echo "running $0"
if [ "$(uname -a | grep Darwin; echo $?)" ]; then 
    echo "dotbot: Darwin found, running darwin shell commands"
    : 
elif [ "$(uname -a | grep Linux; echo $?)" ]; then 
    echo "dotbot: Linux found, running linux shell commands"
    dconf load /com/gexperts/Tilix/ < config/tilix/tilix.dconf
fi

