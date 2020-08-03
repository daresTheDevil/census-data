#!/bin/bash


echo "Hello World"

FILES=/files/*

for filename in *.csv; do
	echo "Processing $filename"
  curl --form addressFile=@$filename --form benchmark=9 https://geocoding.geo.census.gov/geocoder/locations/addressbatch >> result.csv
done
