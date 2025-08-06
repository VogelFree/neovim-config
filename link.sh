#!/bin/sh

SCRIPTFILE=$(realpath $0)
BASEDIR=$(dirname $SCRIPTFILE)
DOTNVIM=$HOME/.config/nvim
echo "Link ${BASEDIR} to ${DOTNVIM}"
ln -s $BASEDIR $DOTNVIM
