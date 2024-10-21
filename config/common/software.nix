{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [

    # Browser
    ungoogled-chromium
    firefox

    # Passwordmanagement
    keepassxc

    # xfce-Plugins
    xfce.xfce4-battery-plugin

    # Office Tools
    libreoffice
    zip
    unzip
    texstudio
    texlive.combined.scheme-full

    # Social-Apps
    discord

    # Video
    mpv
    haruna

    # Security
    gnupg
    libsecret

    # Whitepaper
    zotero

    # Screenshot
    shutter
  ];

  # Secret management
  services.gnome.gnome-keyring.enable = true;

  # GnuPG
  services.pcscd.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # USB auto mount
  services.devmon.enable = true;
  programs.udevil.enable = true;
}
