{ config, pkgs, ... }:
{
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  nix = {
    settings = {
      auto-optimise-store = true;
    };
  };
}
