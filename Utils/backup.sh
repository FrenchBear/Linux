#! /bin/sh
tar cvfpz pi-`uname -n`.`date +%Y-%m-%d`.tgz pi --exclude=.cache
