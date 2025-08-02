{ config, pkgs, ... }:

{
  # Hostname
  networking.hostName = "karonis_laptop";

  # Activate wireless 
  networking.networkmanager.enable = true;
  programs.nm-applet.enable = true;

  # Firewall
  networking.firewall.enable = true;
  # Config in case a Service in served on this Machine
  # networking.firewall.allowedTCPPorts = [ 80 443 25 587 ];
  # networking.firewall.allowedUDPPorts = [ 53 123 ];
}
