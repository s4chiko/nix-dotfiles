{
  description = "Michiya's Home Manager Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  }: {
    homeConfigurations."user" = home-manager.lib.homeManagerConfiguration {
      # Apple Silicon Macのアーキテクチャを指定
      pkgs = nixpkgs.legacyPackages.aarch64-darwin;

      # 読み込む設定ファイルを指定
      modules = [./home.nix];
    };
  };
}
