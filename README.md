# hummingbird_detect

This project's goal is to identify hummingbirds when they show up on a camera feed and notify the user/client when one is currently within the camera's view.

![Screenshot](HummingbirdDetectorBlock.jpg)

# Table of Contents
* [Jetson Setup](#jetson-setup)
* [Project Iterations](#project-iterations)
* [Work Environment Setup](#work-environment-setup)
  * [VNC Setup](work-env-setup.md/#vnc-setup)
  * [Media Streaming Setup](work-env-setup.md/#media-streaming-setup)
* [Instructions](#instructions)

# Jetson Setup

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

First, edit `etc/apt/sources.list.d/nvidia-l4t-apt-source.list` to point to the desired repo using your preferred editor (just change the version to r35.1 in both lines)
Then run:
```
sudo apt update
sudo apt dist-upgrade
```

# Project Iterations

The first phase of the project is to set up a hummingbird classifier trained on existing dataset images of hummingbirds, other birds, gardens, and squirrels, to cover common features of the eventual deployment location (a backyard).

The second phase of the project is to integrate the classifier with a livestream of a separate camera with an RTSP feed.

The third phase of the project is to gather custom data for object detection and train an object detection model, working with the live RTSP feed.

The fourth phase of the project is to create an alert system or GUI to interact with the output of the detection.

# [Work Environment Setup](work-env-setup.md)
I used VNC to facilitate working remotely on the Jetson Xavier via SSH and VLC Media Player to view the feed of the USB camera plugged into the Xavier. See the linked document for setup instructions and notes.

# Instructions
__UNDER CONSTRUCTION__

Clone the jetson-inference repo

Run the docker image

Download the dataset

Train the model

Run the model

Running the model on images
```
imagenet --model=models/hbird_resnet18/resnet18.onnx --input_blob=input_0 --output_blob=output_0 --labels=data/hummingbird/hummingbirds/labels.txt \
           data/hummingbird/hummingbirds/test/Broadtailed_female data/hummingbird/hummingbirds/test_output_bt_female
```
