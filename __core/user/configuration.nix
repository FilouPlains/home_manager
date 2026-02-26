{
  home-manager,
  nixgl,
  nixpkgs,
  self,
  stylix,
}: system: let
  pkgs = import nixpkgs {
    inherit system;
    overlays = [nixgl.overlay];
    allowUnfree = true;
  };

  
in {
  legacyPackages = {
    homeConfigurations = {
      "lucas.rouaud" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          stylix.homeModules.stylix
          ./core/user/lucas.rouaud/lucas.rouaud.nix
          ./core/stylix.nix
          {_module.args.self = self;}
        ];
      };

      "rouaud" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          stylix.homeModules.stylix
          ./core/user/rouaud/rouaud.nix
          ./core/stylix.nix
          {_module.args.self = self;}
        ];
      };

      "root" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
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
