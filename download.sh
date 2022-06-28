#! /bin/bash

FILE="$(curl -I -Ls -o /dev/null -w %{url_effective} https://shdw-drive.genesysgo.net/snapshots/latest)"
basename "$FILE"
f="$(basename -- $FILE)"
FILE2="$(curl -I -Ls -o /dev/null -w %{url_effective} https://shdw-drive.genesysgo.net/snapshots/latest-incremental)"
basename "$FILE2"
f2="$(basename -- $FILE2)"
wget -O $f https://shdw-drive.genesysgo.net/snapshots/latest &
wget -O $f2 https://shdw-drive.genesysgo.net/snapshots/latest-incremental
