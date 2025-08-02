# packages not tailord for one specific language
{ config, pkgs, ... }:


{
  environment.systemPackages = with pkgs; [

    # Javascript
    vscodium-fhs

    # Language Server for Nix-Language (format, autocomplete, etc.)
    nil
    direnv

    # SDK for DotNet-Languages
    # roslyn
    # dotnetCorePackages.sdk_8_0-bin
    # dotnetCorePackages.sdk_9_0-bin
    # dotnetCorePackages.sdk_10_0-bin
    #
    # Remove and Use Nix-Shell?

    # Python Microcontroller
    thonny
    esptool

    # Webdev
    insomnia
  ];

  # Source Control
  programs.git.enable = true;
  programs.git.lfs.enable = true;
  services.legit.enable = true;

  # Android - ADB
  programs.adb.enable = true;
}
