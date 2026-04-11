{ config, lib, pkgs, ... }:

let
  avatar = ../../assets/branding/avatar/avatar.png;
  wallpaper = ../../assets/branding/wallpaper/MoccaWall.png;
  dieselPrettyName = "Diesel OS Cosmic Lab Mocca Edition";
in
{
  environment.etc."diesel-os-cosmic-lab/avatar.png".source = avatar;
  environment.etc."diesel-os-cosmic-lab/wallpaper.png".source = wallpaper;

  environment.etc."os-release".source = lib.mkForce (pkgs.writeText "diesel-os-release" ''
    ANSI_COLOR="0;38;2;126;186;228"
    BUG_REPORT_URL="https://github.com/NixOS/nixpkgs/issues"
    BUILD_ID="${config.system.nixos.version}"
    CPE_NAME="cpe:/o:nixos:nixos:${config.system.nixos.release}"
    DEFAULT_HOSTNAME=nixos
    DOCUMENTATION_URL="https://nixos.org/learn.html"
    HOME_URL="https://nixos.org/"
    ID=nixos
    ID_LIKE=""
    IMAGE_ID=""
    IMAGE_VERSION=""
    LOGO="diesel-os-lab"
    NAME="Diesel OS Lab"
    PRETTY_NAME="${dieselPrettyName}"
    SUPPORT_URL="https://nixos.org/community.html"
    VENDOR_NAME="Diesel OS Lab"
    VENDOR_URL="https://nixos.org/"
    VERSION="${config.system.nixos.release}"
    VERSION_ID="${config.system.nixos.release}"
  '');

  system.activationScripts.dieselHalAvatar = ''
    mkdir -p /var/lib/AccountsService/icons
    mkdir -p /var/lib/AccountsService/users

    cp /etc/diesel-os-cosmic-lab/avatar.png /var/lib/AccountsService/icons/hal

    cat > /var/lib/AccountsService/users/hal <<EOF
    [User]
    Icon=/var/lib/AccountsService/icons/hal
    SystemAccount=false
    EOF

    chmod 644 /var/lib/AccountsService/icons/hal
    chmod 644 /var/lib/AccountsService/users/hal
  '';
}
