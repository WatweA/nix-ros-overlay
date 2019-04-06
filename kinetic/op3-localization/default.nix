
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, sensor-msgs, catkin, roscpp, robotis-math, eigen, std-msgs, eigen-conversions, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-localization";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_localization/0.2.1-0.tar.gz;
    sha256 = "e9c6d3acec7b401ee6ed5a9552295b8b3adf48071ca9424ec9439187756f555f";
  };

  propagatedBuildInputs = [ cmake-modules boost sensor-msgs roscpp robotis-math eigen std-msgs eigen-conversions tf geometry-msgs ];
  nativeBuildInputs = [ cmake-modules boost sensor-msgs catkin roscpp robotis-math eigen std-msgs eigen-conversions tf geometry-msgs ];

  meta = {
    description = ''The op3_localization package'';
    #license = lib.licenses.Apache 2.0;
  };
}