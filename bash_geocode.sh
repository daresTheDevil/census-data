#!/bin/bash


echo "Hello World"

FILES=/files/*

for filename in /files/*.csv; do
	echo "Processing $filename"
	curl --form addressFile=@$filename --form benchmark=9 https://geocoding.geo.census.gov/geocoder/geographies/addressbatch --output geocoderesult.csv
done
