
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-libqt-network";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/kinetic/libqt_network/1.0.1-0.tar.gz;
    sha256 = "1c4c72cb4f6e92f8177b686f38ddf105e1d1c939ed375f4b61469fe8dc5eba92";
  };

  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin qt5.qtbase ];

  meta = {
    description = ''libqt-network metapackage supporting qt4 and qt5'';
    #license = lib.licenses.United States Government Purpose;
  };
}