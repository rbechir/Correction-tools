#!/bin/bash

if [ -e trace ]
then
	rm trace
fi

for file in _maps/*
do
	echo "Run ./lem-in $1 < $file"
	echo "\nFile: $file" >> trace
	./lem-in $1 < $file >> trace 2>&1
done
