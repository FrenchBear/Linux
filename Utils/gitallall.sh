#!/bin/bash

pushd ~/Development/GitVSTS
gitall.sh $@
cd ~/Development/GitHub
gitall.sh $@
cd ~/Development/GitBerg
gitall.sh $@
popd
