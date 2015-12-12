#!/bin/bash
USERDIR=user
tmp=$(find . -name $USERDIR)
if [ -n "$tmp" ]; then 
	 rm -r $USERDIR;
fi 
unset tmp
mkdir $USERDIR
bash lib/rooms.sh init $USERDIR
bash lib/rooms.sh visit $USERDIR
bash lib/rooms.sh doors $USERDIR

#cat "$(bash lib/position.sh echo $USERDIR)"/description.txt
