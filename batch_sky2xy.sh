#!/bin/sh

for line in `cat N04066_0001.ephm`
do

  line=`echo $line | tr '\t' ' ' | tr -s ' '`
  echo LINE:$line
  continue
  RA=`echo $line | cut -d ' ' -f2`
  DEC=`echo $line | cut -d ' ' -f3`

  echo RA=$RA, DEC=$DEC
done
