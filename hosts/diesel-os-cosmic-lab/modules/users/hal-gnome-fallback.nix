{ lib, pkgs, ... }:

let
  dconfBackup = ../../users/hal/gnome/dconf-backup.ini;
  hasDconfBackup = builtins.pathExists dconfBackup;
in
{
  system.activationScripts.dieselPrepareHalGnomeFallback = lib.mkIf hasDconfBackup ''
    install -d -m 0755 -o hal -g users /home/hal/.local/state/diesel-os-cosmic-lab
  '';

  systemd.user.services.diesel-gnome-fallback-dconf-restore = lib.mkIf hasDconfBackup {
    description = "Restore optional GNOME dconf fallback for user hal";
    wantedBy = [ "graphical-session.target" ];
    after = [ "graphical-session-pre.target" ];
    path = [ pkgs.bash pkgs.coreutils pkgs.dconf ];
    serviceConfig = {
      Type = "oneshot";
    };
    script = ''
      set -euo pipefail

      if [ "''${USER:-}" != "hal" ]; then
        exit 0
      fi

      stamp="$HOME/.local/state/diesel-os-cosmic-lab/gnome-dconf-restored"

      if [ -e "$stamp" ]; then
        exit 0
      fi

      ${pkgs.dconf}/bin/dconf load / < "${toString dconfBackup}"
      touch "$stamp"
    '';
  };
}
