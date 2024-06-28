# Tweaks stuff

## Electron based apps

- To turn on hardware acceleration for apps that don't have it, add `--ignore-gpu-blacklist --enable-gpu-rasterization --enable-native-gpu-memory-buffers --num-raster-threads=4` to the arguments

## Keychron fixes

- https://gist.github.com/andrebrait/961cefe730f4a2c41f57911e6195e444

## Can't connect to enterprise wifi?

- Go to the NetworkManager config for the wifi connection (/etc/NetworkManager/system-connections/CONNECTION)
- Add the following to \[802-1x\] section

> phase1-auth-flags=32
- Save and restart NetworkManager
