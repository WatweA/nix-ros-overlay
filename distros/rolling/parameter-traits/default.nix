
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, fmt, rclcpp, rsl, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-parameter-traits";
  version = "0.3.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/parameter_traits/0.3.7-3.tar.gz";
    name = "0.3.7-3.tar.gz";
    sha256 = "41588536f64c7df2adb7d600b3610b085c06cb1ad341e54ba4414e41e08fe699";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt rclcpp rsl tcb-span tl-expected ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Functions and types for rclcpp::Parameter'';
    license = with lib.licenses; [ bsd3 ];
  };
}
