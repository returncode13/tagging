#!/bin/bash

traces=648
tracesToSkip=0
inputData="/home/ubuntu/programming/data/rsf/MC1501-1348P1082.rsf"
outputdir="/home/ubuntu/programming/data/rsf/biased"

	for ((n=1; n<100 ;n++))
	do
	echo "Traces to skip "$tracesToSkip" channels= "$traces" n= "$n
	output="shot_"$n".rsf"
	#sfwindow < $inputData   f2=$tracesToSkip n2=$traces o1=0 o2=1 d1=0.004 d2=1 >$outputdir/$output
	sfwindow < $inputData   f2=$tracesToSkip n2=$traces j1=4  >$outputdir/$output
	tracesToSkip=$tracesToSkip+$traces
	#n=$((n+1))
	done
