{ config, pkgs, username, stateVersion, ... }:

{
  imports = [
    ./programs
  ];

  home.packages = with pkgs; [
    # nix
    nixpkgs-fmt
    # bash
    direnv
    alacritty
    neofetch
    # rclone
    # nnn
    killall
    # # fonts
    # nerdfonts
    # noto-fonts
    # noto-fonts-emoji
    # font-awesome
    # jetbrains-mono
    # material-design-icons
    # git
    git
    git-extras
    vscode
    # vscodium
    google-chrome
    chromium
    # stuff
    enpass
    signal-desktop
    discord
    # gaming
    steam
    lutris

    # # hypr stuff
    # light
    # asusctl #optional
    # grim
    # slurp
    # swww
    # fish
    # ironbar
    # (pkgs.waybar.overrideAttrs (oldAttrs: {
    #     mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
    #   })
    # )
  ];

  home.username = "${username}";
  home.homeDirectory = "/home/${username}";
  home.stateVersion = "${stateVersion}";

  programs.home-manager.enable = true;
}
