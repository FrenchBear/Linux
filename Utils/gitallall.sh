#!/bin/bash

pushd ~/Development
cd GitVSTS
gitall.sh $@
cd ../GitHub
gitall.sh $@
popd
