{ config, pkgs, ... }:

{
  home.file.".config/neofetch/config.conf".source = ./config.conf;
  home.file.".config/neofetch/ascii.txt".source = ./ascii.txt;
}
