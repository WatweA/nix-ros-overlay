
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, rospy, roslib, qt-gui, rostopic, actionlib, std-msgs, genmsg, genpy, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-py-common";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt-release/archive/release/kinetic/rqt_py_common/0.5.0-0.tar.gz;
    sha256 = "c9c4185b52c7945d2edb69634f4b1b41190130762b97fe8791cef56db84b52ba";
  };

  propagatedBuildInputs = [ roslib qt-gui rostopic actionlib rospy rosbag genpy python-qt-binding ];
  nativeBuildInputs = [ std-msgs genmsg catkin ];

  meta = {
    description = ''rqt_py_common provides common functionality for rqt plugins written in Python.
    Despite no plugin is provided, this package is part of the rqt_common_plugins
    repository to keep refactoring generic functionality from these common plugins
    into this package as easy as possible.

    Functionality included in this package should cover generic ROS concepts and
    should not introduce any special dependencies beside &quot;ros_base&quot;.'';
    #license = lib.licenses.BSD;
  };
}