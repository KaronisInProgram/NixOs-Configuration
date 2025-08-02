{ config, pkgs, ... }:

{
  # longevity for SSD's 
  services.fstrim.enable = true;
}
