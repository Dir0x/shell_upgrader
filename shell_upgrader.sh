#!/bin/bash

sleep 1
xte "mouseclick 1"
xte "str python -c 'import pty; pty.spawn(\"/bin/bash\")'"
xte "key Return"
sleep 1
xte "str python3 -c 'import pty; pty.spawn(\"/bin/bash\")'"
xte "key Return"
sleep 1
xte "keydown Control_L" "keydown Z" 
sleep 1
xte "keyup Control_L" "keyup Z"
sleep 1
xte "str stty raw -echo; fg"
xte "key Return"
sleep 1
xte "str reset"
xte "key Return"
sleep 1
xte "str xterm"
xte "key Return"
sleep 1
xte "str export SHELL=bash"
xte "key Return"
sleep 1
xte "str export TERM=xterm"
xte "key Return"
sleep 1
xte "str stty rows 52 columns 187"
xte "key Return"
sleep 1
xte "str reset"
xte "key Return"
