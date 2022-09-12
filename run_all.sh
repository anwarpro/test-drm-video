echo "Processing for 360p"
./360p.sh

echo "Processing for 480p"
./480p.sh

echo "Processing for 720p"
./720p.sh

echo "Processing for 1080p"
./1080p.sh

echo "Encrypting for Widevine DRM"
./drm.sh

echo "Encrypting for Multi DRM - Widevine,PlayReady"
./multidrm.sh
