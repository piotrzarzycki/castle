#!/bin/bash
POSITION_VAR=position.v
if [ "$1" == "init" ]; then echo  "./rooms" > $2/$POSITION_VAR; fi
if [ "$1" == "echo" ]; then cat $2/$POSITION_VAR; fi
if [ "$1" == "goto" ]; then echo  $(cat $2/$POSITION_VAR;)"/$3" > $2/$POSITION_VAR; fi
