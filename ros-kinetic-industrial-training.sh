#! /bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git -y

cd $HOME

wget http://download.qt.io/official_releases/qt/5.7/5.7.0/qt-opensource-linux-x64-5.7.0.run
chmod +x qt-opensource-linux-x64-5.7.0.run
./qt-opensource-linux-x64-5.7.0.run
sudo apt-get install build-essential -y
sudo apt-get install libfontconfig1 -y
sudo apt-get install mesa-common-dev -y
sudo apt-get install libglu1-mesa-dev -y

#git clone https://github.com/ros-industrial/industrial_training.git
