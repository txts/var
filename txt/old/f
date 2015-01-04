#!/bin/bash

set -x
x=$1
shift
y=$*
for f in `ls $x/_posts/*$y*`
do
	vi $f
done
