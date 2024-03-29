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
    unstable.docker

    unstable.vscodium-fhs

    # Language Server for Nix-Language (format, autocomplete, etc.) -> use in VSCodium Nix Extension pack
    unstable.rnix-lsp
    unstable.direnv

    # SDK for DotNet-Languages
    unstable.roslyn
    unstable.dotnet-sdk_7

    # Python Microcontroller
    unstable.thonny

    # Pythoon language
    unstable.python311
    unstable.python311Packages.pip
  ];

  virtualisation.docker.enable = true;
}
