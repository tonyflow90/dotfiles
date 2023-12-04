{ config, pkgs, username, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "de";
  services.xserver.xkbVariant = "";
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "${username}";
}
