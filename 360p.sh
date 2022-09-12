ffmpeg -i original.mp4 -c:a copy \
  -vf "scale=-2:360" \
  -c:v libx264 -profile:v baseline -level:v 3.0 \
  -x264-params scenecut=0:open_gop=0:min-keyint=72:keyint=72 \
  -minrate 600k -maxrate 600k -bufsize 600k -b:v 600k \
  -y in/h264_baseline_360p_600.mp4
