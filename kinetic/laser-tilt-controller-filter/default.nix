
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, pluginlib, sensor-msgs, catkin, pr2-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-laser-tilt-controller-filter";
  version = "0.1.28";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/laser_tilt_controller_filter/0.1.28-0.tar.gz;
    sha256 = "d82115e1f02b2a396f1a21b32e61919976689881feebb7c4555acc1cd4b63472";
  };

  propagatedBuildInputs = [ filters pluginlib pr2-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ filters catkin pluginlib pr2-msgs roscpp sensor-msgs ];

  meta = {
    description = ''laser_tilt_controller_filter'';
    #license = lib.licenses.BSD;
  };
}