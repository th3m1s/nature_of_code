#!/bin/bash

cd $HOME/sketchbook/
#choose symbolic link files and unlink them all
find -maxdepth 1 -type l |xargs -n1 unlink
