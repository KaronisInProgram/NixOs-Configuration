{ config, pkgs, ... }:

{
  # Enable sound.
  sound.enable = true;

  # Enable Pulsaudio with bletooths.
  hardware.pulseaudio = {
    enable = true;
    package = pkgs.pulseaudioFull;
  };
}
