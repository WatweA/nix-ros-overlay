
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, pythonPackages, rclpy, ros-environment, ros2cli, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2doctor";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2doctor/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "fee4266baa7128d92fae4c3e42631e5266e336fe8a64052b8cc6db2c9628ff03";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-ros launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest std-msgs ];
  propagatedBuildInputs = [ ament-index-python python3Packages.catkin-pkg python3Packages.importlib-metadata python3Packages.psutil python3Packages.rosdistro rclpy ros-environment ros2cli ];

  meta = {
    description = ''A command line tool to check potential issues in a ROS 2 system'';
    license = with lib.licenses; [ asl20 ];
  };
}