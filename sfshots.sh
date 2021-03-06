#!/bin/bash
#n=0
channels=648
totaltraces=11842848
inputData="/media/ebs_3tb/poc-machine-seis/rsf/MC1501-1396P1078.rsf"
outputdir="/media/ebs_3tb/poc-machine-seis/data/biased"
#for i in *.rsf
#do
	for ((n=1; n<$totaltraces/channels;n++))
	do
	minTraces=$(($n*$channels))
	maxTraces=$(($minTrace + $channels))
	echo "Traces to skip "$minTraces
	output="shot_"$n".rsf"
	sfwindow < $inputData  >$outputdir/$output  min2=$minTraces max2=$maxTraces
	echo "Wrote shot_"$n".rsf"
	sleep 5s
	#n=$((n+1))
	done
#done
