#!/usr/bin/env bash

echo 'Stopping service...'
sudo systemctl stop a-timer-app.service
echo 'Disabling service...'
sudo systemctl disable a-timer-app.service
echo 'Disabling timers...'
sudo systemctl disable on.timer off.timer
echo 'Removing files...'
sudo rm /etc/systemd/system/a-timer-app.service
sudo rm /etc/systemd/system/on.timer
sudo rm /etc/systemd/system/on.target
sudo rm /etc/systemd/system/off.timer
sudo rm /etc/systemd/system/off.target
echo 'Reloading systemd...'
sudo systemctl daemon-reload
sudo systemctl reset-failed
echo 'Done.'
