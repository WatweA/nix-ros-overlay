
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rosbag2-cpp }:
buildRosPackage {
  pname = "ros-iron-rosbag2-examples-cpp";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/rosbag2_examples_cpp/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "a5811eee9c0de9e1906fdafc0201af646df4d6b6850aa1fdc1d80eb668e104ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rosbag2-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rosbag2 C++ API tutorials and examples'';
    license = with lib.licenses; [ asl20 ];
  };
}