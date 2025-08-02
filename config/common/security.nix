{ config, pkgs, ... }:

{
  security.doas.enable = true;
  security.sudo.enable = false;

  # Configure doas
  security.doas.extraRules = [{
    users = [ "karonis" ];
    keepEnv = true;
    persist = true;
  }];

  security.pam.services.dbus.enable = true;
  security.pam.services.lightdm.enableGnomeKeyring = true;
}