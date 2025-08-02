{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [

    # Browser
    ungoogled-chromium
    firefox
    librewolf

    # Passwordmanagement
    keepassxc

    # Office Tools
    peazip
    libreoffice
    texstudio
    texliveFull

    # Social
    discord

    # Video
    mpv
    haruna

    # Whitepaper
    zotero

    # Screenshot
    shutter
  ];

  ##### Software per Options #####
  # Browser
  programs.firefox.enable = true;

  # E-Mail
  programs.thunderbird.enable = true;

  # Enable dconf-configuration system
  programs.dconf.enable = true;

  # GnuPG
  services.pcscd.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
}
