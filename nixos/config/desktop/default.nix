{ config, pkgs, desktopEnvironment, ... }:

{

  imports =
    [
      ./${desktopEnvironment}
    ];

}