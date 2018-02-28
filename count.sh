#!/bin/bash


COUNTER=1
while [  $COUNTER -le $1 ]; do
	./polyrhythms $COUNTER | wc -l
	let COUNTER=COUNTER+1 
done
