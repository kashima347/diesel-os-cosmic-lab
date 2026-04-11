{ lib, pkgs, modulesPath, ... }:

let
  dieselLogo = ../../assets/branding/logo/diesel-os-lab-icon.png;
  dieselWallpaper = ../../assets/branding/wallpaper/MoccaWall.png;

  dieselBrandingAssets = pkgs.runCommandLocal "diesel-os-mocca-branding-assets" { } ''
    mkdir -p $out/share/diesel-os-mocca
    cp ${dieselLogo} $out/share/diesel-os-mocca/logo.png
    cp ${dieselWallpaper} $out/share/diesel-os-mocca/wallpaper.png
  '';
in
{
  imports = [
    (modulesPath + "/installer/cd-dvd/installation-cd-graphical-calamares-gnome.nix")
  ];

  networking.hostName = "diesel-os-mocca-live";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "pt_BR.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  services.xserver.xkb = {
    layout = "br";
    variant = "";
  };

  console.keyMap = "br-abnt2";

  networking.networkmanager.enable = true;

  boot.plymouth.enable = lib.mkForce false;
  boot.consoleLogLevel = 7;
  boot.initrd.verbose = true;

  boot.kernelParams = [
    "systemd.show_status=1"
    "rd.systemd.show_status=1"
    "udev.log_level=3"
  ];

  boot.supportedFilesystems = [
    "btrfs"
    "ext4"
    "f2fs"
    "ntfs"
    "vfat"
    "xfs"
  ];

  boot.initrd.supportedFilesystems = [
    "btrfs"
    "ext4"
    "f2fs"
    "ntfs"
    "vfat"
    "xfs"
  ];

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  programs.dconf.enable = true;

  programs.dconf.profiles.user.databases = [
    {
      settings = {
        "org/gnome/desktop/interface" = {
          color-scheme = "prefer-dark";
          gtk-theme = "Adwaita-dark";
        };

        "org/gnome/desktop/background" = {
          picture-uri = "file://${dieselBrandingAssets}/share/diesel-os-mocca/wallpaper.png";
          picture-uri-dark = "file://${dieselBrandingAssets}/share/diesel-os-mocca/wallpaper.png";
          picture-options = "zoom";
        };

        "org/gnome/desktop/screensaver" = {
          picture-uri = "file://${dieselBrandingAssets}/share/diesel-os-mocca/wallpaper.png";
          picture-options = "zoom";
        };

        "org/gnome/shell" = {
          favorite-apps = [
            "firefox.desktop"
            "org.gnome.Nautilus.desktop"
            "org.gnome.Console.desktop"
            "gparted.desktop"
            "io.calamares.calamares.desktop"
          ];
        };
      };
    }
  ];

  environment.etc."xdg/autostart/diesel-calamares.desktop".text = ''
    [Desktop Entry]
    Type=Application
    Name=Calamares Installer
    Exec=${pkgs.runtimeShell} -lc 'sleep 2; calamares'
    OnlyShowIn=GNOME;
    NoDisplay=true
    X-GNOME-Autostart-enabled=true
  '';

  environment.systemPackages = with pkgs; [
    dieselBrandingAssets
    git
    curl
    wget
    micro
    htop
    pciutils
    usbutils
    mesa-demos
    gparted
  ];

  hardware.enableRedistributableFirmware = true;

  system.stateVersion = "25.11";
}
