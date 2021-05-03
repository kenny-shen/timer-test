#!/usr/bin/env bash

echo 'Copying files to /etc/systemd/system'
sudo cp * /etc/systemd/system

echo 'Enabling service...'
sudo systemctl enable a-timer-app.service
echo 'Enabling timers...'
sudo systemctl enable --now on.timer off.timer
echo 'Listing timers...'
sudo systemctl list-timers
echo 'Done. Run ./teardown.sh to uninstall'
