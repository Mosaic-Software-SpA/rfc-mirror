#!/bin/sh
set -eu

root=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd)
mkdir -p "$root/mirror"
rsync -avz --delete rsync.rfc-editor.org::rfcs-text-only "$root/mirror/"
