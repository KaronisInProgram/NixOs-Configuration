{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { };
in
{
  environment.systemPackages = [
    unstable.adoptopenjdk-hotspot-bin-16
    unstable.maven
    unstable.gradle
  ];
}
