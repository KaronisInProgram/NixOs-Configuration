{ config, pkgs, ... }:

{
  security.doas.enable = true;
  security.sudo.enable = false;

  # Configure doas.
  security.doas.extraRules = [{
    users = [ "karonis" ];
    keepEnv = true;
    persist = true;
  }];

}



