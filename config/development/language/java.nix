{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { };
in
{
  environment.systemPackages = [
    unstable.adoptopenjdk-bin
    unstable.maven
    unstable.gradle
  ];
}
