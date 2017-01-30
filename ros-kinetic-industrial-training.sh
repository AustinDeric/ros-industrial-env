#! /bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install meld -y
sudo apt-get install build-essential -y
sudo apt-get install libfontconfig1 -y
sudo apt-get install mesa-common-dev -y
sudo apt-get install libglu1-mesa-dev -y

cd $HOME

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full -y
sudo rosdep init
rosdep update
sudo apt-get install python-rosinstall -y
sudo apt-get install ros-kinetic-moveit -y
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install python-catkin-tools -y
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
echo "source /home/ros-industrial/ros_libs/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

mkdir -p ros_libs/src
git clone -b kinetic-devel https://github.com/ros-industrial/industrial_core.git ros_libs/src
git clone -b kinetic-devel https://github.com/ros-industrial/universal_robot.git ros_libs/src
catkin build --workspace ros_libs
echo "source /home/ros-industrial/ros_libs/devel/setup.bash" >> ~/.bashrc

wget http://download.qt.io/official_releases/qt/5.7/5.7.0/qt-opensource-linux-x64-5.7.0.run
chmod +x qt-opensource-linux-x64-5.7.0.run
sudo add-apt-repository ppa:levi-armstrong/qt-libraries-xenial  
sudo add-apt-repository ppa:levi-armstrong/ppa  
sudo apt-get update -y
sudo apt-get install qt57creator-plugin-ros -y
./qt-opensource-linux-x64-5.7.0.run

mkdir -p industrial_training_ws/src
git clone -b kinetic-devel https://github.com/ros-industrial/industrial_training.git industrial_training_ws/src
