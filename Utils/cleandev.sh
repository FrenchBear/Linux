#!/bin/bash

find . -type d \( -name obj -o -name bin -o -name target -o -name generated -o -name __pycache__ \) -prune -print -exec rm -rf '{}' \;
