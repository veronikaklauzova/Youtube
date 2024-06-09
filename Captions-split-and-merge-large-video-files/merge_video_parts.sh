#!/bin/bash

for i in $(ls *captions*); do
    echo "file" $i >>temp; 
done

ffmpeg -f concat -safe 0 -i temp -c copy merged_final_video.mp4


