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
    unstable.jetbrains.idea-community
    unstable.jetbrains.rider

    # Language Server for Nix-Language (format, autocomplete, etc.) -> use in VSCodium Nix Extension pack
    unstable.rnix-lsp
  ];
}
