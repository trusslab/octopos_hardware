cp -r $1 $2
l1=${1,,}
l2=${2,,}
cd $2
mv $l1.sv $l2.sv
mv $l1.sby $l2.sby
sed -i 's/'$l1'/'$l2'/g' $l2.sby
