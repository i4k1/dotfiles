#!/bin/sh
# A simple script to encode video to WebM

# We encode the sound with the lowest possible bitrate so that it does not harm the sound
ffmpeg -i video.mp4 -c:a libopus -b:a 45k -vbr on -vn -sn out-a.ogg

# We evaluate the complexity of the video; Difficulty data is written to the ffmpeg2pass-0.log file.
# First of all, let's calculate the video bitrate using the formula:
# video bitrate = (maximum file size in kilobytes - audio stream size) * 8 / video length in seconds
ffmpeg -i video.mkv -c:v libvpx-vp9 -b:v vbK -an -sn -lag-in-frames 16 -pass 1 out-v.webm

# We encode the video in the second pass, using the available libvpx-vp9 optimization
ffmpeg -i video.mkv -c:v libvpx-vp9 -b:v vbK -an -sn -lag-in-frames 16 -auto-alt-ref 1 -quality best -pass 2 out-v.webm

# Merging audio and video
ffmpeg -i out-v.webm -i out-a.ogg -c copy video.webm
