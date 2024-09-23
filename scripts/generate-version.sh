#!/bin/sh
exec 3>&2 2> /dev/null
SRCDIR=$(dirname "$0")/..
cd "$SRCDIR"
CWD=$(realpath "$PWD")
exec 2>&3

head -n1 "$SRCDIR"/debian/changelog | \
	cut -f2 -d'(' | \
	cut -f1 -d')'
