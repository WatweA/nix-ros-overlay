
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, cv-bridge, imagezero, message-runtime, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-imagezero-ros";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/kinetic/imagezero_ros/0.2.4-0.tar.gz;
    sha256 = "2bedb8482b007f719ba852a5377de055fd81cb67dbb75e3a7c29ba279d2d56af";
  };

  propagatedBuildInputs = [ sensor-msgs cv-bridge message-runtime imagezero ];
  nativeBuildInputs = [ catkin message-runtime sensor-msgs cv-bridge roscpp imagezero ];

  meta = {
    description = ''A library that provides convenient methods for manipulating ROS images with ImageZero'';
    #license = lib.licenses.BSD;
  };
}