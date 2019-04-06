
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, actionlib-msgs, sensor-msgs, catkin, message-generation, std-msgs, message-runtime, visualization-msgs, actionlib, rospy, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-light";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_light/0.6.13-0.tar.gz;
    sha256 = "2f2101042d87799f78d50c428c533fa46ada35ac83e5962b97ecc478d61ef611";
  };

  propagatedBuildInputs = [ boost actionlib-msgs sensor-msgs rospy message-runtime visualization-msgs actionlib std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ boost actionlib-msgs sensor-msgs catkin roscpp message-generation actionlib std-msgs diagnostic-msgs visualization-msgs ];

  meta = {
    description = ''This package contains scripts to operate the LED lights on Care-O-bot.'';
    #license = lib.licenses.Apache 2.0;
  };
}