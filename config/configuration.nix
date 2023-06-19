# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [
      # Default profile for lenovo thinkpad t495 (fixes, etc.) 
      <nixos-hardware/lenovo/thinkpad/t495>
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # Load common (default) configurations.
      ./common/boot.nix
      ./common/security.nix
      ./common/network.nix
      ./common/localization.nix
      ./common/upgrade.nix
      ./common/desktop.nix
      ./common/printing.nix
      ./common/audio.nix
      ./common/bluetooth.nix
      ./common/software.nix
      # Configurate the Users
      ./user/karonis.nix
      # Configuration for development
      ./development/tools.nix
      ./development/language/java.nix
      ./development/language/csharp.nix
      ./development/language/python.nix
      # Configuration for games
      ./game/game.nix
    ];

  # Enable touchpad support.
  services.xserver.libinput.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "20.09"; # Did you read the comment?
}
