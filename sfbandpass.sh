#!/bin/bash
inputdir="/media/sharath/Elements/RSF/biased"
outputdir="/media/sharath/Elements/RSF/filtered"
array=($(ls $inputdir/*))
for f in `ls $inputdir`
do

  output="filtered_"$f
  sfbandpass < $inputdir/$f > $outputdir/$output flo=1 fhi=125 verb=y
  echo "bandpass on "$f
done
