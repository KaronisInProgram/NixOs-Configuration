# packages not tailord for one specific language
{ config, pkgs, ... }:

let
  #unstable = import <nixos-unstable> { };
  # example for unfree licence software.
  unstable = import <nixos-unstable> { config.allowUnfree = true; };
in
{
  environment.systemPackages = [
    # VM
    unstable.git
    unstable.docker

    # BlockChain
    unstable.go-ethereum

    # Go - Programming Language
    unstable.go

    # Javascript
    unstable.vscodium-fhs
    unstable.nodejs
    unstable.typescript

    # Java
    unstable.adoptopenjdk-bin
    unstable.maven
    unstable.gradle

    # Language Server for Nix-Language (format, autocomplete, etc.) -> use in VSCodium Nix Extension pack
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
