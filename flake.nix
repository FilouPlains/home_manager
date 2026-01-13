{
  description = "Home Manager configuration";

  inputs = {
    # Increment release branch for NixOS
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    stylix,
    ...
  }: {
    homeConfigurations = {
      "lucas.rouaud" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          stylix.homeModules.stylix
          ./core/user/lucas.rouaud/lucas.rouaud.nix
          ./core/stylix.nix
          {_module.args.self = self;}
        ];
      };

      "rouaud" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          stylix.homeModules.stylix
          ./core/user/rouaud/rouaud.nix
          ./core/stylix.nix
          {_module.args.self = self;}
        ];
      };

      "root" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          stylix.homeModules.stylix
          ./core/user/root/root.nix
          ./core/stylix.nix
          {_module.args.self = self;}
        ];
      };
    };
  };
}
