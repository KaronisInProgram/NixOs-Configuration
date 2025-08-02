{ config, pkgs, lib, ... }:

{
  imports =
    [
      ./base.nix
      ./power.nix
      ./boot.nix
      ./security.nix
      ./network.nix
      ./localization.nix
      ./upgrade.nix
      ./desktop.nix
      ./printing.nix
      ./audio.nix
      ./bluetooth.nix
      ./software.nix
    ];
}
