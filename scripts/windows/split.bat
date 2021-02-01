ffmpeg -i driving.mp4   -i driving_stabilized.MP4   -filter_complex "[0:v]pad=iw*2:ih[int];[int][1:v]overlay=W/2:0[vid]"   -map [vid]   -c:v libx264   -crf 23   -preset veryfast   output2.mp4
 