#!/usr/bin/env bash

index=0

for entry in "$1"/*
do
  magick $entry -geometry 512x512 -extent 512x512 -background white -grayscale Rec709Luminance $2/img-$index.jpg
  index=$((index + 1))
done
