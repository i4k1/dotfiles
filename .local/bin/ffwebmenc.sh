#!/bin/sh
# A simple script to encode video to WebM
# usage: ./ffwebm.sh <file> <size in kb>
# 11-12-2023

if [ $# -ne 2 ]
then
    echo "\e[1;32musage:\e[0m $0 \e[1;33m<file> \e[1;36m<size in kilobytes>\e[0m"
elif [ $# -eq 2 ]
then
    # We encode the sound with the lowest possible bitrate so that it does not harm the sound
    ffmpeg -y -i $1 -c:a libopus -b:a 45k -vbr on -vn -sn out-a.ogg

    # We evaluate the complexity of the video; Difficulty data is written to the ffmpeg2pass-0.log file. First of all, let's calculate the video bitrate using the formula: video bitrate = (maximum file size in kilobytes - audio stream size) * 8 / video length in seconds
    ffmpeg -y -i $1 -c:v libvpx-vp9 -b:v $(echo $(echo "scale=0; ($2 - $(expr $(stat -c %s out-a.ogg) / 1024)) * 8 / $(ffprobe -i $1 -show_entries format=duration -v quiet -of csv="p=0")" | bc))K -an -sn -lag-in-frames 16 -pass 1 out-v.webm

    # We encode the video in the second pass, using the available libvpx-vp9 optimization
    ffmpeg -y -i $1 -c:v libvpx-vp9 -b:v $(echo $(echo "scale=0; ($2 - $(expr $(stat -c %s out-a.ogg) / 1024)) * 8 / $(ffprobe -i $1 -show_entries format=duration -v quiet -of csv="p=0")" | bc))K -an -sn -lag-in-frames 16 -auto-alt-ref 1 -quality best -pass 2 out-v.webm

    # Merging audio and video
    ffmpeg -y -i out-v.webm -i out-a.ogg -c copy $1.webm

    rm out-a.ogg out-v.webm ffmpeg2pass-0.log
fi
