{ config, pkgs, ... }:

{
  # Enable bluetooth.
  hardware.bluetooth.enable = true;

  # GUI for bluetpppth devices.
  services.blueman.enable = true;

  # Bluetooth configurations for Audio
  services.pipewire.wireplumber.extraConfig.bluetoothEnhancements = {
  "monitor.bluez.properties" = {
      "bluez5.enable-sbc-xq" = true;
      "bluez5.enable-msbc" = true;
      "bluez5.enable-hw-volume" = true;
      "bluez5.roles" = [ "hsp_hs" "hsp_ag" "hfp_hf" "hfp_ag" ];
    };
  };
}
