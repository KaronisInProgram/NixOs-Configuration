{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.karonis = {
    isNormalUser = true;
    extraGroups = [
      "wheel" # -> Enable ‘sudo’ for the user.
      "networkmanager" # -> Enable changing of network settings
      "dialout" # -> Enable communication with devices in dev\
    ];
  };
}
