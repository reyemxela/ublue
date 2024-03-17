#!/usr/bin/env bash

set -oue pipefail

tmpfile="$(mktemp -u)"
tmpdir="$(mktemp -d)"

wget -O "$tmpfile" https://github.com/PapirusDevelopmentTeam/adapta-kde/archive/master.tar.gz
tar -xf "$tmpfile" -C "$tmpdir"

cp -R \
  "$tmpdir/adapta-kde-master/aurorae" \
  "$tmpdir/adapta-kde-master/color-schemes" \
  "$tmpdir/adapta-kde-master/konsole" \
  "$tmpdir/adapta-kde-master/plasma" \
  /usr/share

rm -rf "$tmpfile" "$tmpdir"
