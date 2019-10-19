#usage ./segyread.sh <INP> <OUT>
#INP=folder where the segys are kept
#OUT=folder where teh rsfs need to be written

#remove tagging '/' from INP and OUT
INP=${1%/}
OUT=${2%/}

#check for number of arguments
#check for size on OUT location

echo $INP
echo $OUT

#check for these locations
#if they don't exist then create

DATAPATH=$OUT/DATAPATH/
TFILE=$OUT/TFILES/
HFILE=$OUT/HFILES/
BFILE=$OUT/BFILES/

for f in $INP/*;
do
bfile=$BFILE`basename $f | sed 's/\.[^.]*$/.bfile/'`;
tfile=$BFILE`basename $f | sed 's/\.[^.]*$/.tfile/'`;
gfile=$BFILE`basename $f | sed 's/\.[^.]*$/.hfile/'`;
out=`basename $f | sed 's/\.[^.]*$/.rsf/'`
sfsegyread tape=$f tfile=$tfile hfile=$hfile bfile=$bfile datapath=$DATAPATH verb=y > $OUT/$out
done


