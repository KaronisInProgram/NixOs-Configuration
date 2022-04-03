# packages not tailord for one specific language
{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { };
in
{
  environment.systemPackages = [
    unstable.git
    unstable.vscodium-fhs

    unstable.jetbrains.idea-community
    pkgs.android-studio
    pkgs.postgresql_14

    # Language Server for Nix-Language (format, autocomplete, etc.) -> use in VSCodium Nix Extension pack
    unstable.rnix-lsp
  ];

  # GnuPG
  services.pcscd.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # PostgreSQL
  services.postgresql.enable = true;
}
