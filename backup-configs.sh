#!/usr/bin/env bash

BASEDIR=$(cd -- "$(dirname -- "$0")" && pwd - P)

# To export current dconf config
dconf dump / > "${BASEDIR}"/dconf-q.conf

# Back up start-up scripts
rm -rf "${BASEDIR}"/config/autostart && cp -r ~/.config/autostart/. "${BASEDIR}"/config/autostart/

# Back up terminator configs
rm -rf "${BASEDIR}"/config/terminator && cp -r ~/.config/terminator/. "${BASEDIR}"/config/terminator/
