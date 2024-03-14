#!/usr/bin/env bash
cd ~/mc_server
wall "Minecraft Server Backing up.."
git add .
git commit -m "`date +"%Y%m%d %H:%M:%S"`"
git push
wall "Minecraft Server Backup Complete!!!"
