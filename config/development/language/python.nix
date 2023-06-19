{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { };
in
{
  environment.systemPackages = [
    unstable.conda
    unstable.python311
  ];
}
