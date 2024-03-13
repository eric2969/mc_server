#!/usr/bin/env bash
wall "Minecraft Server Backup.."
cd /home/eric/mc_server
git add .
git commit -m "`date +"%Y%m%d %H:%M:%S"`"
git push
wall "Minecraft Server Backup Complete!!!"
