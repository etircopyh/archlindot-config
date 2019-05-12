balooctl disable
resolvectl status
systemctl mask lvm2-monitor.service
systemctl mask systemd-udev-settle.service
rm /usr/share/dbus-1/services/org.kde.kwalletd.service
systemctl mask ModemManager.service
systemctl mask lvm2-*.service
sudo curl -o /usr/local/bin/ix ix.io/client && sudo chmod +x /usr/local/bin/ix
