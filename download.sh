#! /bin/bash

FILE="$(curl -I -Ls -o /dev/null -w %{url_effective} https://shdw-drive.genesysgo.net/snapshots/latest)"
basename "$FILE"
f="$(basename -- $FILE)"
wget -O $f https://shdw-drive.genesysgo.net/snapshots/latest
