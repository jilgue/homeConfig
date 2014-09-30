#!/usr/bin/expect -f
set timeout -1
spawn ssh bbdev03
match_max 100000
expect -exact "cmartin@bbdev03:~$"
send -- "emacs\r"
send -- "y"
interact
