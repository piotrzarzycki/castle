#!/bin/bash
POSITION="$(bash lib/position.sh echo $2)"; 
if [ "$1" == "init" ]; then bash lib/position.sh init $2; fi
if [ "$1" == "visit" ]; then
		
	f=$POSITION/enter.txt
	if [ -f $f  ]; then 
	   cat 	$f
	fi  
	unset f

fi



if [ "$1" == "doors" ]; then 
   lst=$(ls -d $POSITION/*/);
	
   GATES="../  $lst";
   index=0 	
   for i in $GATES; do
       	f=$i"door.txt";
	if [ -f $f ]; then 
		echo -n "[D$index]";cat $f; 
		index=$(($index + 1));
	fi
	
    done	
    echo $index	
fi
