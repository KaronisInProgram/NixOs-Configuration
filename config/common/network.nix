{ config, pkgs, ... }:

{
  # Hostname
  networking.hostName = "karonis_laptop";

  # Activate wireless 
  networking.networkmanager.enable = true;
  programs.nm-applet.enable = true;
}
