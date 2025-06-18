#!/usr/bin/env bash
echo "Installing java"
sudo apt install openjdk-21-jre openjdk-21-jdk
dir=`pwd`
dest=$HOME"/mc_server"
echo "Copying Files..."
if [[ $dir != $dest ]];then
    cp -R $dir ~/mc_server
fi
echo "Cloning scripts..."
cd ~/mc_server
cp ./mc_start.sh ~/mc_start.sh
cp ./mc_backup.sh ~/mc_backup.sh
echo "Setting Up crontab..."
crontab -l | { cat; cat cron; } | crontab -
echo "Setting alias"
echo "alias mc_con="tmux attach -t mc_server" >> ~/.bash_profile
echo "Clearing temporary files..."
if [[ $dir != $dest ]];then
    rm -rf $dir
fi
echo "Setup Complete!!!
Please restart to apply the server !!!"
