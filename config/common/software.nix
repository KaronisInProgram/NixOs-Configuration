{ config, pkgs, ... }:

{
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

    # Basic "Textediting and calculation"-Pack
    #libreoffice
    texmaker

    # Social-Apps
    schildichat-desktop

    # Security
    gnupg
    libsecret
  ];

  # GnuPG
  services.pcscd.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
}
