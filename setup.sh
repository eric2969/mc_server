#!/usr/bin/env bash
dir=`pwd`
dest=$HOME"mc_server"
echo "Copying Files..."
if [[ $dir != $dest ]];then
    cp -R $dir ~/mc_server
fi
cd ~/mc_server
cp ./mc_start.sh ~/mc_start.sh
cp ./mc_backup.sh ~/mc_backup.sh
crontab -l | { cat; cat cron; } | crontab -
if [[ $dir != $dest ]];then
    rm -rf $dir
fi
echo "Setup Complete!!!"
