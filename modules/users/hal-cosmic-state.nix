{ pkgs, ... }:

let
  cosmicSource = ../../users/hal/cosmic;
  cosmicSourceStr = toString cosmicSource;
in
{
  system.activationScripts.dieselPrepareHalCosmicState = ''
    install -d -m 0755 -o hal -g users /home/hal/.config/cosmic
    install -d -m 0755 -o hal -g users /home/hal/.local/state/diesel-os-cosmic-lab
  '';

  systemd.user.services.diesel-cosmic-state-restore = {
    description = "Restore Diesel OS Cosmic state for user hal";
    wantedBy = [ "graphical-session.target" ];
    after = [ "graphical-session-pre.target" ];
    path = [ pkgs.bash pkgs.coreutils pkgs.findutils pkgs.rsync ];
    serviceConfig = {
      Type = "oneshot";
    };
    script = ''
      set -euo pipefail

      if [ "''${USER:-}" != "hal" ]; then
        exit 0
      fi

      source="${cosmicSourceStr}"
      target="$HOME/.config/cosmic"
      stamp="$HOME/.local/state/diesel-os-cosmic-lab/cosmic-state-restored"

      mkdir -p "$target"
      mkdir -p "$(dirname "$stamp")"

      if [ -e "$stamp" ]; then
        exit 0
      fi

      ${pkgs.rsync}/bin/rsync -a --delete "$source"/ "$target"/
      touch "$stamp"
    '';
  };
}
