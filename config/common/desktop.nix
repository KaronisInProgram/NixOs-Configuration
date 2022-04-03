{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "de";
  services.xserver.xkbOptions = "eurosign:e";
  services.xserver.desktopManager.xfce.enable = true;
  services.xserver.displayManager.defaultSession = "xfce";

  # Customise the Filebrowser
  services.xserver.desktopManager.xfce.thunarPlugins = [
    pkgs.xfce.thunar-archive-plugin
    pkgs.xfce.thunar-volman
  ];

  # Mount, trash, and other functionalities
  services.gvfs.enable = true;

  services.picom = {
    enable = true;
    fade = true;
    inactiveOpacity = 0.9;
    shadow = true;
    fadeDelta = 4;
  };

}
