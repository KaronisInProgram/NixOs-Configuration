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

    # Language Server for Nix-Language (format, autocomplete, etc.) -> use in VSCodium Nix Extension pack
    unstable.rnix-lsp
  ];

  # PostgreSQL
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_14;
    enableTCPIP = true;
    authentication = pkgs.lib.mkOverride 10 ''
      local all all trust
      host all all 127.0.0.1/32 trust
      host all all ::1/128 trust
    '';
    initialScript = pkgs.writeText "backend-initScript" ''
      CREATE ROLE karonis WITH LOGIN PASSWORD 'karonis' CREATEDB;
      CREATE DATABASE karonis;
      GRANT ALL PRIVILEGES ON DATABASE karonis TO karonis;
    '';
  };
}
