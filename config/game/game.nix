{ config, pkgs, ... }:

{
  environment.systemPackages  = with pkgs; [
    qgo
    gnugo
  ];
}
