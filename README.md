# hummingbird_detect

This project's goal is to identify hummingbirds when they show up on a camera feed and notify the user/client when one is currently within the camera's view.

![Screenshot](HummingbirdDetectorBlock.jpg)

# Setup

This was set up on a Jetson Nano, initially running Jetpack 4.3.6. In order to update all parts of the Jetpack SDK to the latest supported on Nano, which is 4.6.1. This version includes Linux version 32.7.3.

To check jetpack version type:
```
sudo apt-cache show nvidia-jetpack
```

To check Linux version:
```
dpkg-query --show nvidia-l4t-core
```

To update jetpack, follow the following steps:
```
edit etc/apt/sources.list.d/nvidia-l4t-apt-source.list to point to the 32.7 repo (just change the version to r35.1 in both lines)
sudo apt update
sudo apt dist-upgrade
```
