./packager \
  in=h264_baseline_360p_600.mp4,stream=audio,output=out/audio.mp4 \
  in=h264_baseline_360p_600.mp4,stream=video,output=out/h264_360p.mp4 \
  in=h264_main_480p_1000.mp4,stream=video,output=out/h264_480p.mp4 \
  in=h264_main_720p_3000.mp4,stream=video,output=out/h264_720p.mp4 \
  in=h264_high_1080p_6000.mp4,stream=video,output=out/h264_1080p.mp4 \
  --enable_widevine_encryption \
  --key_server_url https://license.uat.widevine.com/cenc/getcontentkey/widevine_test \
  --content_id 7465737420636f6e74656e74206964 \
  --signer widevine_test \
  --aes_signing_key 1ae8ccd0e7985cc0b6203a55855a1034afc252980e970ca90e5202689f947ab9 \
  --aes_signing_iv d58ce954203b7c9a9a9d467f59839249 \
  --mpd_output out/h264.mpd \
  --hls_master_playlist_output out/h264_master.m3u8
