#! /bin/bash

## This script subsets the downloaded NCEP data 

for file in merg_2013*nc4
do
    echo ${file}
    sudo cdo sellonlatbox,60.0,120.0,50.0,15.0 ${file} ${file}_subset.nc4
    cdo -remapcon,template.nc ${file}_subset.nc4 ctt/${file}
    sudo rm ${file}
    sudo rm ${file}_subset.nc4
done
