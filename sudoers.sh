#!/usr/bin/env bash

if [ -f dotfiles/system/etc/sudoers.d/01_sudo ]; then
    sudo cp dotfiles/system/etc/sudoers.d/01_sudo /etc/sudoers.d/
    sudo chmod 440 /etc/sudoers.d/01_sudo
    sudo chown root:root /etc/sudoers.d/01_sudo
fi
