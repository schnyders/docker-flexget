#!/bin/ash
pip install -U pip
pip install -U flexget
rm -f /opt/flexget/.config-lock && /usr/local/bin/flexget --loglevel $LOGLEVEL daemon start --autoreload-config