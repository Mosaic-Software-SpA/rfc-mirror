#!/bin/sh
set -eu

root=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd)
mkdir -p "$root/mirror"
rsync -az --delete rsync.rfc-editor.org::everything-ftp/ "$root/mirror/"
