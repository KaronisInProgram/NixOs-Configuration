{ lib, config, pkgs, ... }:

{
    # Basic NixOS management
    powerManagement.enable = true;

    # Truely enable TLP; conflicts with GNOME/internal profile daemon
    services.power-profiles-daemon.enable = false;
    services.tlp.enable = true;
    services.tlp.settings = {
      CPU_SCALING_GOVERNOR_ON_AC  = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
      CPU_ENERGY_PERF_POLICY_ON_AC  = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "balance_power";
      START_CHARGE_THRESH_BAT0 = 20;
      STOP_CHARGE_THRESH_BAT0 = 80;
    };
}
