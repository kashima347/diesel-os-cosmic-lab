{ lib, pkgs, ... }:

{
  networking.hostName = "cosmic-lab";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "pt_BR.UTF-8";

  console.keyMap = "br-abnt2";

  users.users.hal = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  system.stateVersion = "25.11";
}
