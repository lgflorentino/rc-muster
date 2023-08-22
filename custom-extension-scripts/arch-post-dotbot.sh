#!/bin/zsh

echo "Running $(basename $0)"

# load Tilix settings
dconf load /com/gexperts/Tilix/ < config/tilix/tilix.dconf

echo "Exiting $(basename $0)"

