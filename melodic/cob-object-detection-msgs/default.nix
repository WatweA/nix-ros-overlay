
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-object-detection-msgs";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_object_detection_msgs/0.6.14-1.tar.gz;
    sha256 = "973a7ecbb144a06fe0ca33c7547a9d365e30d1b3fc4aefc715db24719e01402b";
  };

  buildInputs = [ std-srvs actionlib-msgs sensor-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-srvs actionlib-msgs sensor-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains message type definitions for object detection'';
    license = with lib.licenses; [ asl20 ];
  };
}