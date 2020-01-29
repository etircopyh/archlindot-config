#!/bin/bash
startcut=$(read -p "Start cut time: ")
endcut=$(read -p "End cut time: ")
inputfile=$(read -e -p "Input file path: ")
outputfile=$(read -e -p "Output file path: ")

videocut() {
    ffmpeg -ss $startcut -t $endcut -i $inputfile -vcodec copy -acodec copy $outputfile
}
