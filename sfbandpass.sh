#!/bin/bash
inputdir="/home/ubuntu/programming/data/rsf/field_data_to_test_cnn/biased"
outputdir="/home/ubuntu/programming/data/rsf/field_data_to_test_cnn/filtered"
array=($(ls $inputdir/*))
for f in `ls $inputdir`
do

  output="filtered_"$f
  sfbandpass < $inputdir/$f > $outputdir/$output flo=1 fhi=62.5 verb=y
  echo "bandpass on "$f
done
