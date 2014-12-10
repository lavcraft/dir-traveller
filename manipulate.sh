#!/bin/bash

cd $(dirname $BASH_SOURCE)

export WINDOWS_HOST=tolkv@localhost
export TARGET_LOCAL_DIR=./in
export TARGET_REMOTE_DIR=~/out
export TARGET_REMOTE_SCRIPT="~/killmeplease.sh $TARGET_REMOTE_DIR"
export TARGET_DIR=./iamtransformeddir

./0-send.sh
./1-exec.sh
./2-get.sh
