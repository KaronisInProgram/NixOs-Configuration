{ config, pkgs, ... }:

{
  # Select internationalisation properties.
  console.font = "Lat2-Terminus16";
  console.keyMap = "de";
  i18n = {
    defaultLocale = "de_DE.UTF-8";
  };

  # Set your time zone.
  time.timeZone = "Europe/Berlin";
}
