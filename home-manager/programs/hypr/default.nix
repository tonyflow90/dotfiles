
{ pkgs, lib, ... }:

{
 home.file.".config/hypr" = lib.mkForce {
   recursive = true;
   source = ./config;
 };

    wayland.windowManager.hyprland = {
     enable = true;
  #   xwayland.enable = true;
   };
}
