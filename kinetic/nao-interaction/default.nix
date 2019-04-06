
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nao-interaction-msgs, nao-audio, nao-interaction-launchers, nao-vision }:
buildRosPackage {
  pname = "ros-kinetic-nao-interaction";
  version = "0.1.5";

  src = fetchurl {
    url = https://github.com/ros-naoqi/nao_interaction-release/archive/release/kinetic/nao_interaction/0.1.5-0.tar.gz;
    sha256 = "c0b618ca1076c25019642d782afb2f680cc957734fe4559b82a91d0dcacfe2c7";
  };

  propagatedBuildInputs = [ nao-interaction-launchers nao-vision nao-interaction-msgs nao-audio ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      Metapackage for the Nao robot, providing access to:
        - NAOqi audio proxies
        - NAOqi vision proxies
    </p>'';
    #license = lib.licenses.BSD;
  };
}