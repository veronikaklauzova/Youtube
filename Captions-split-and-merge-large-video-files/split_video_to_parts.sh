#!/bin/bash

ffmpeg -i $1 -threads 3 -vcodec copy -f segment -segment_time 04:30 -reset_timestamps 1 $1_video_part_%02d.mp4
