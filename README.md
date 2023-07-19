# hummingbird_detect

This project's goal is to identify hummingbirds when they show up on a camera feed and notify the user/client when one is currently within the camera's view.

![Screenshot](HummingbirdDetectorBlock.jpg)

# Setup

Initially this was going to be set up on a Jetson Nano, initially running Jetpack 4.3.6. I have since migrated to using a Jetson Xavier running Jetpack 5.0.2. The following instructions and commands are helpful for updating Jetpack.
In order to update all parts of the Jetpack SDK to the latest supported on Nano, which is 4.6.1. This version includes Linux version 32.7.3.

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
edit etc/apt/sources.list.d/nvidia-l4t-apt-source.list to point to the desired repo (just change the version to r35.1 in both lines)
sudo apt update
sudo apt dist-upgrade
```

# Project Iterations

The first phase of the project is to set up a hummingbird classifier trained on existing dataset images of hummingbirds, other birds, gardens, and squirrels, to cover common features of the eventual deployment location (a backyard).

The second phase of the project is to integrate the classifier with a livestream of a separate camera with an RTSP feed.

The third phase of the project is to gather custom data for object detection and train an object detection model, working with the live RTSP feed.

The fourth phase of the project is to create an alert system or GUI to interact with the output of the detection.

# Instructions (to expand)

Clone the jetson-inference repo
Run the docker image
Download the dataset
Train the model
