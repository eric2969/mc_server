#!/usr/bin/env bash
wall "Clearing Log files..."
cd ~/mc_server/logs
touch tmp
rm `find | grep .gz$` tmp
cd ~/mc_server
wall "Minecraft Server Backing up.."
git add .
git commit -m "`date +"%Y%m%d %H:%M:%S"`"
git push
wall "Minecraft Server Backup Complete!!!"
