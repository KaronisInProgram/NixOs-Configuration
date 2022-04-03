{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> {};
in 
{
  environment.systemPackages = [ 
    unstable.roslyn
    unstable.dotnet-sdk_6
  ];
}