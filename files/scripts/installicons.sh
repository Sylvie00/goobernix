#!/usr/bin/env bash

set -ouex pipefail

mkdir /tmp/icons
git clone --depth 1 https://github.com/PonyRoleplayer/WinXP-icon-theme.git /tmp/icons
cp /tmp/icons/winxp /usr/share/icons/winxp

echo yayyyyy
