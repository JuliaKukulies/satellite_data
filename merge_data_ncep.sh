#! /bin/bash

## This script merges the files into monthly aggregates files 



for y in {2013..2016}
do

    mkdir ${y}
    for m in {01..12}                                                                                                                                                                                       
    do                                                                                                                                                                                                      
        sudo cdo cat merg_${y}${m}*pixel*nc4 ${y}/merg_${y}${m}.nc4                                                                                   
        #sudo rm merg_${y}${m}*pixel*nc4                                                                                                                                       
    done                                                                                                                                                                                                    
done                                                                                                                                                                                         
