
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, composition-interfaces, python3Packages, pythonPackages, rcl-interfaces, rclcpp-components, rclpy, ros2cli, ros2node, ros2param, ros2pkg }:
buildRosPackage {
  pname = "ros-iron-ros2component";
  version = "0.25.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/iron/ros2component/0.25.1-1.tar.gz";
    name = "0.25.1-1.tar.gz";
    sha256 = "7c8826f8da7f2e6e042ad2901c85dabe5c7a42c5795d975cac807353c61e13bb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces rcl-interfaces rclcpp-components rclpy ros2cli ros2node ros2param ros2pkg ];

  meta = {
    description = ''The component command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}