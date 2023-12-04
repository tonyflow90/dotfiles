{ config, pkgs, stateVersion, desktopEnvironment, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./config/boot
      ./config/nix
      ./config/local
      ./config/audio
      ./config/graphic
      ./config/desktop
      ./config/users
    ];

  # Enable networking
  networking = {
    hostName = "nixos";
    networkmanager = {
      enable = true;
    };
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  system = {
    stateVersion = "${stateVersion}";
  };
}