{ config, pkgs, ... }:

{
  # Configure Xfce 
  environment.systemPackages = with pkgs; [
    pavucontrol
    wmctrl
    xclip
    xcolor
    xdo
    xdotool
    xfce.gigolo
    xfce.orage
    xfce.xfce4-appfinder
    xfce.xfce4-clipman-plugin
    xfce.xfce4-cpugraph-plugin
    xfce.xfce4-dict
    xfce.xfce4-fsguard-plugin
    xfce.xfce4-genmon-plugin
    xfce.xfce4-netload-plugin
    xfce.xfce4-panel
    xfce.xfce4-pulseaudio-plugin
    xfce.xfce4-systemload-plugin
    xfce.xfce4-weather-plugin
    xfce.xfce4-whiskermenu-plugin
    xfce.xfce4-battery-plugin
    xfce.xfce4-xkb-plugin
    xfce.xfdashboard
    xorg.xev
    xsel
    xtitle
    xwinmosaic
    zuki-themes
    greybird
  ];

  services.xserver = {
    enable = true;
    xkb.layout = "de";
    xkb.options = "eurosign:e";
    excludePackages = with pkgs; [
      xterm
    ];

    displayManager = {
      lightdm = {
        enable = true;
        greeters.slick = {
          enable = true;
          theme.name = "Greybid-dark";
        };
      };
    };
    desktopManager.xfce.enable = true;
  };

  services.displayManager.defaultSession = "xfce";

  # Customise the Filebrowser
  programs.thunar = {
    enable = true;
    plugins = with pkgs.xfce; [
      thunar-archive-plugin
      thunar-media-tags-plugin
      thunar-volman
    ];
  };

  # Enable touchpad support.
  services.libinput.enable = true;

  # (Auto-)Mount, trash, and other functionalities
  services.gvfs.enable = true;  
  services.devmon.enable = true;
  programs.udevil.enable = true;

  services.picom = {
    enable = true;
    fade = true;
    inactiveOpacity = 0.9;
    shadow = true;
    fadeDelta = 4;
  };
}
