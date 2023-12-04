{ config, pkgs, username, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "de";
  services.xserver.xkbVariant = "";
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "${username}";
}
