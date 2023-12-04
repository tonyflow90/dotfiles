{
  description = "My nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # nixpkgs-wayland.url = "github:nix-community/nixpkgs-wayland";

    # Home manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Hyprland
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { nixpkgs, home-manager, hyprland, ... }@inputs:
  let
    username = "keno";
    system = "x86_64-linux";
    stateVersion = "24.05";
    desktopEnvironment = "gnome";
  in
  {
    nixosConfigurations = {
      # nixpkgs.overlays = [ inputs.nixpkgs-wayland.overlay ];

      desktop = nixpkgs.lib.nixosSystem {
        system = "${system}";
        specialArgs = { inherit inputs hyprland username system stateVersion desktopEnvironment; };
        modules = [
          ./nixos/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
      	    home-manager.backupFileExtension = "backup";
            home-manager.extraSpecialArgs = { inherit inputs username system stateVersion desktopEnvironment; };
            home-manager.users."${username}" = import ./home-manager/home.nix;
          }
        ];
      };
    };

  };
}
