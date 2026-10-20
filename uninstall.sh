#!/bin/sh
set -u
systemctl --user disable --now bt-battery-alert.service 2>/dev/null
rm -f "$HOME/.local/bin/bt-battery-alert" \
      "$HOME/.local/share/applications/bt-battery-alert.desktop" \
      "$HOME/.config/systemd/user/bt-battery-alert.service"
systemctl --user daemon-reload
