
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, depth-image-proc, catkin, tf2-ros, rostest, image-proc, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-rgbd-launch";
  version = "2.2.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/rgbd_launch-release/archive/release/kinetic/rgbd_launch/2.2.2-0.tar.gz;
    sha256 = "c5a51eacfedf43adc47cbd95156c3aeee110c8a53b40d9e5cac1415830b72dcd";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ image-proc nodelet depth-image-proc tf2-ros ];
  nativeBuildInputs = [ catkin depth-image-proc image-proc nodelet tf2-ros ];

  meta = {
    description = ''Launch files to open an RGBD device and load all nodelets to 
     convert raw depth/RGB/IR streams to depth images, disparity images, 
     and (registered) point clouds.'';
    #license = lib.licenses.BSD;
  };
}