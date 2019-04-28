#!/bin/sh

for i in "$@"
do
    jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace "$i"
done
