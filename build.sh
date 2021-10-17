#!/usr/bin/env bash
# rm -fr build dist
VERSION=5.0.0
NAME="rESCue-flasher"
DIST_NAME="rESCue-flasher"

pyinstaller --log-level=DEBUG \
            --noconfirm \
            --windowed \
            build-on-mac.spec

# https://github.com/sindresorhus/create-dmg
create-dmg "dist/$NAME.dmg" "dist/$NAME.app"
#mv "$NAME $VERSION.dmg" "dist/$DIST_NAME.dmg"
