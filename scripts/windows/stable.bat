rem Windows Version
rem Usage: Will attempt to stabilise shaky cam footage using 2 passes
rem easy to convert to command line if you need it
rem next line put filename without extension
set input_file=nemo
ffmpeg -i %input_file%.mp4 -vf vidstabdetect=shakiness=10:accuracy=15 -f null -
ffmpeg -i %input_file%.mp4 -vf vidstabtransform=zoom=5:smoothing=30 -vcodec libx264 -preset slow -tune film -crf 20 -an %input_file%_stabilized.mp4
del transforms.trf
