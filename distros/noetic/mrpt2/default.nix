
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, jsoncpp, libGL, libGLU, libjpeg, libpcap, libusb1, nav-msgs, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, qt5, ros-environment, rosbag-storage, roscpp, sensor-msgs, std-msgs, stereo-msgs, suitesparse, tf2, tf2-geometry-msgs, tf2-msgs, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-noetic-mrpt2";
  version = "2.11.11-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt2-release/archive/release/noetic/mrpt2/2.11.11-1.tar.gz";
    name = "2.11.11-1.tar.gz";
    sha256 = "090cf1e90b7ad7d3bef6bf29fc266ecc124a49f1eb1529f308e0da423170d8cf";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake ffmpeg freenect jsoncpp libjpeg libpcap libusb1 openni2 pkg-config python3Packages.pip pythonPackages.pybind11 qt5.qtbase ros-environment tinyxml-2 udev wxGTK32 zlib ];
  propagatedBuildInputs = [ cv-bridge eigen freeglut geometry-msgs glfw3 libGL libGLU nav-msgs octomap opencv opencv.cxxdev rosbag-storage roscpp sensor-msgs std-msgs stereo-msgs suitesparse tf2 tf2-geometry-msgs tf2-msgs xorg.libXrandr xorg.libXxf86vm ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 2.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
