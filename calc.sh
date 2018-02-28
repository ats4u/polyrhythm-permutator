#!/bin/bash


COUNTER=1
while [  $COUNTER -le $1 ]; do
	./polyrhythms $COUNTER | paste -s -d, 
	let COUNTER=COUNTER+1 
done
