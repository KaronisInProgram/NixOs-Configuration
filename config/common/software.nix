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
    p7zip
    texstudio
    texlive.combined.scheme-full

    # Social-Apps
    discord

    # Security
    gnupg
    libsecret

    # Whitepaper
    zotero
  ];

  # Secret management
  #services.passSecretService.enable = true;
  #services.passSecretService.package = pkgs.libsecret;
  services.gnome.gnome-keyring.enable = true;

  # GnuPG
  services.pcscd.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # Privacy
  #services.i2pd.enable = true;
}
