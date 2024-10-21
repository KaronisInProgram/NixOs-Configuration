# packages not tailord for one specific language
{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { };
in
{
  environment.systemPackages = with pkgs; [

    unstable.peazip
  ];
}
