# Split video in 10 minute chunks
# https://unix.stackexchange.com/questions/1670/how-can-i-use-ffmpeg-to-split-mpeg-video-into-10-minute-chunks

ffmpeg -i input.mp4 -c copy -map 0 -segment_time 600 -f segment -reset_timestamps 1 output%03d.mp4
