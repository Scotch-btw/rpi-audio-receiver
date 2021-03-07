#!/bin/bash -e

read -p "Gerätename [$(hostname)]: " HOSTNAME  
raspi-config nonint do_hostname ${HOSTNAME:-$(hostname)}

CURRENT_PRETTY_HOSTNAME=$(hostnamectl status --pretty)
read -p "Anzeigename [${CURRENT_PRETTY_HOSTNAME:-Raspberry Pi}]: " PRETTY_HOSTNAME
hostnamectl set-hostname --pretty "${PRETTY_HOSTNAME:-${CURRENT_PRETTY_HOSTNAME:-Raspberry Pi}}"

