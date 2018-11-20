#!/bin/bash

traces=648
tracesToSkip=0
inputData="/media/ebs_3tb/poc-machine-seis/rsf/MC1501-1324P1084.rsf"
outputdir="/media/ebs_3tb/poc-machine-seis/field_data/biased"

	for ((n=1; n<100 ;n++))
	do
	echo "Traces to skip "$tracesToSkip" channels= "$traces" n= "$n
	output="shot_"$n".rsf"
	#sfwindow < $inputData   f2=$tracesToSkip n2=$traces o1=0 o2=1 d1=0.004 d2=1 >$outputdir/$output
	sfwindow < $inputData   f2=$tracesToSkip n2=$traces j1=4  >$outputdir/$output
	tracesToSkip=$tracesToSkip+$traces
	#n=$((n+1))
	done
