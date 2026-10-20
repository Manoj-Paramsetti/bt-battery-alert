#!/bin/sh
# Install for the current user and start at login via a systemd user service.
set -eu
cd "$(dirname "$0")"
install -Dm755 bt-battery-alert "$HOME/.local/bin/bt-battery-alert"
install -Dm644 bt-battery-alert.desktop "$HOME/.local/share/applications/bt-battery-alert.desktop"
install -Dm644 bt-battery-alert.service "$HOME/.config/systemd/user/bt-battery-alert.service"
systemctl --user daemon-reload
systemctl --user enable --now bt-battery-alert.service
echo "Installed. Logs: journalctl --user -u bt-battery-alert -f"
