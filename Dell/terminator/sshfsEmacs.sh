#!/bin/zsh
mountpoint -q ~/bbdev03 || sshfs bbdev03: ~/bbdev03
emacs -nw
