#!/bin/bash
inputdir="/media/ebs_3tb/poc-machine-seis/data/biased"
outputdir="/media/ebs_3tb/poc-machine-seis/data/filtered"
array=($(ls $inputdir/*))
for f in `ls $inputdir`
do

  output="filtered_"$f
  sfbandpass < $inputdir/$f > $outputdir/$output flo=1 fhi=125 verb=y
  echo "bandpass on "$f
done
