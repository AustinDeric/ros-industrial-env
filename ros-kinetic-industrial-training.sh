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
sudo add-apt-repository ppa:beineri/opt-qt57-xenial  
sudo add-apt-repository ppa:levi-armstrong/ppa  
sudo apt-get update && sudo apt-get install qt57creator-plugin-ros

sudo apt-get install meld -y

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full -y
sudo rosdep init
rosdep update
sudo apt-get install python-rosinstall -y

sudo apt-get install ros-kinetic-moveit
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

git clone https://github.com/ros-industrial/industrial_training.git
