
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-unreliable-experiments, rocon-gateway-utils, catkin, rocon-hub, rocon-test, rocon-gateway-tests, rocon-gateway, rocon-hub-client }:
buildRosPackage {
  pname = "ros-kinetic-rocon-multimaster";
  version = "0.8.1-r2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_multimaster-release/archive/release/kinetic/rocon_multimaster/0.8.1-2.tar.gz;
    sha256 = "d75d660fbcbf425976978defb7e76ba459e55d460760316ab27907e838fb7fce";
  };

  propagatedBuildInputs = [ rocon-unreliable-experiments rocon-hub rocon-gateway-utils rocon-gateway-tests rocon-test rocon-gateway rocon-hub-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This doesn't do everything you need for multimaster, however it does
    provide the building blocks common to most or all multimaster systems.
    In particular, it provides the gateway model, which is an upgrade on
    old foreign_relay and master_sync concepts.'';
    #license = lib.licenses.BSD;
  };
}