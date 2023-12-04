{ config, pkgs, lib, ... }:

{
  home.file.".config/rofi" = lib.mkForce {
    recursive = true;
    source = ./config;
  };

  programs.rofi = {
    enable = true;
    configPath = "~/.config/rofi/style-1rasi";
  };

  # programs.wofi = {
  #   enable = true;
  # };
}
