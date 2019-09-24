#! /bin/sh
tar cvfpz pierre-`uname -n`.`date +%Y-%m-%d`.tgz pierre --exclude=.cache
