# packages not tailord for one specific language
{ config, pkgs, ... }:

let
  #unstable = import <nixos-unstable> { };
  # example for unfree licence software.
  unstable = import <nixos-unstable> { config.allowUnfree = true; };
in
{
  environment.systemPackages = [

    unstable.git

    # Javascript
    unstable.vscodium-fhs
    unstable.nodejs
    unstable.typescript

    # Language Server for Nix-Language (format, autocomplete, etc.)
    unstable.nil
    unstable.direnv

    # SDK for DotNet-Languages
    unstable.roslyn
    unstable.dotnet-sdk_7

    # Python Microcontroller
    unstable.thonny
    unstable.esptool

    # Python language
    unstable.python311
    unstable.python311Packages.pip

    # Webdev
    unstable.insomnia
  ];
}
