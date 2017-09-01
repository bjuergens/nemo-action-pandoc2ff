#!/bin/bash

ACTION_DIR=$HOME/.local/share/nemo/actions/
BASEDIR=$(dirname ${BASH_SOURCE[0]})"/"

cp -r $BASEDIR"pandoc2ff" $ACTION_DIR
cp $BASEDIR"pandoc2ff.nemo_action" $ACTION_DIR
