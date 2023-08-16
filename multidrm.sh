./packager \
  in=in/h264_baseline_360p_600.mp4,stream=audio,output=out/multidrm/audio.mp4 \
  in=in/h264_baseline_360p_600.mp4,stream=video,output=out/multidrm/h264_360p.mp4 \
  in=in/h264_main_480p_1000.mp4,stream=video,output=out/multidrm/h264_480p.mp4 \
  in=in/h264_main_720p_3000.mp4,stream=video,output=out/multidrm/h264_720p.mp4 \
  in=in/h264_high_1080p_6000.mp4,stream=video,output=out/multidrm/h264_1080p.mp4 \
  --enable_raw_key_encryption \
  --protection_systems Widevine,PlayReady,Fairplay \
  --protection_scheme cbcs \
  --keys label=HD:key_id=ac41e1d51de44f01b1df1fdcb0de3d9e:key=aaed45e9a1da100f2c3defd67e4538bf,label=SD:key_id=ac41e1d51de44f01b1df1fdcb0de3d9e:key=aaed45e9a1da100f2c3defd67e4538bf,label=AUDIO:key_id=ac41e1d51de44f01b1df1fdcb0de3d9e:key=aaed45e9a1da100f2c3defd67e4538bf \
  --pssh 000000847073736800000000EDEF8BA979D64ACEA3C827DCD51D21ED000000641210AC41E1D51DE44F01B1DF1FDCB0DE3D9E1A2462346263613864392D323366662D343838642D623932362D626435313033303539353838222461633431653164352D316465342D346630312D623164662D31666463623064653364396548F3C6899B06 \
  --mpd_output out/multidrm/h264.mpd \
  --hls_master_playlist_output out/multidrm/h264.m3u8 \
  --hls_key_uri skd://ac41e1d5-1de4-4f01-b1df-1fdcb0de3d9e:8FAE680D94CF70CC820379F822E70970 \
  --iv 8fae680d94cf70cc820379f822e70970 \
  --clear_lead 0
