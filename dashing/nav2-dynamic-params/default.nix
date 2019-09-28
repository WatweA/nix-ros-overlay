
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, rclcpp-lifecycle, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-util, nav2-common, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-dynamic-params";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_dynamic_params/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "39934c1f3fb5a95c378c8090fb04221ee549e409cc3a85e53a33a008a7a4fdb7";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp nav2-util rclcpp-lifecycle nav2-common ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-lifecycle rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides a validation class for ROS2 parameters with validation based on parameter
    type and defined bounds. Support for custom validation callbacks is also provided. Some useful
    convenience functions for event callbacks are also provided'';
    license = with lib.licenses; [ asl20 ];
  };
}