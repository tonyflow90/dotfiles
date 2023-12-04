{ config, pkgs, username, ... }:

{
#  # Enable Display Manager
#  services.greetd = {
#    enable = true;
#    settings = {
#      default_session = {
#        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --time-format '%I:%M %p | %a • %h | %F' --cmd Hyprland";
#        user = "${username}";
#      };
#    };
#  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "de";
  services.xserver.xkbVariant = "";
  services.xserver.displayManager.gdm.enable = true;

  # programs = {
  #   hyprland = {
  #     enable = true;
  #     xwayland = {
  #       enable = true;
  #     };
  #   };
  # };

  # # XDG Portals
  # xdg = {
  #   autostart.enable = true;
  #   portal = {
  #     enable = true;
  #     extraPortals = with pkgs; [
  #       xdg-desktop-portal-gtk
  #     ];
  #   };
  # };

  environment.systemPackages = with pkgs; [
    (pkgs.waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      })
    )
  ];

#  programs.hyprland = {
#    enable = true;
#    xwayland.enable = true;
#  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  security = {
    polkit.enable = true;
  };

  # programs.hyprland = {
  #   enable = true;
  #   xwayland.enable = true;
  # };

  # xdg.portal.enable = true;
  # # xdg.autostart.enable = true;
  # # xdg.portal.config.common.default = "*";
  # xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  environment = {
    sessionVariables = {
      NIXOS_OZONE_WL = "1";
      WLR_NO_HARDWARE_CURSORS = "1";
    };
  };
} 
