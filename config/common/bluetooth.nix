{ config, pkgs, ... }:

{
  # Enable bluetooth.
  hardware.bluetooth.enable = true;

  # GUI for bluetpppth devices.
  services.blueman.enable = true;
}
