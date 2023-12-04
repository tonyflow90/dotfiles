
{ pkgs, lib, ... }:

{

  home.file.".config/waybar" = lib.mkForce {
    recursive = true;
    source = ./config;
  };

  # programs.waybar = {
  #   enable = true;
  # };
}