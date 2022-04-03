{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.karonis = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ]; # wheel -> Enable ‘sudo’ for the user.
  };
}