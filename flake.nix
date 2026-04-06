{
  description = "Diesel OS Cosmic Lab";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        cosmic-lab = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/cosmic-lab/configuration.nix
          ];
        };

        diesel-os-cosmic-lab = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/diesel-os-cosmic-lab/configuration.nix
          ];
        };
      };
    };
}
