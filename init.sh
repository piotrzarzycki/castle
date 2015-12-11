#!/bin/bash
USERDIR=user
tmp=$(find . -name $USERDIR)
if [ -n "$tmp" ]; then 
	 rm -r $USERDIR;
fi 
unset tmp
mkdir $USERDIR
bash lib/position.sh init $USERDIR

cat "$(bash lib/position.sh echo $USERDIR)"/description.txt
