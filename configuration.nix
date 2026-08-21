{ config, lib, pkgs, ... }:

{
  imports = [];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  wsl.enable = true;
  wsl.defaultUser = "nixos";

  environment.systemPackages = with pkgs; [
    git vim wget
  ];

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users.nixos = { pkgs, ... }: {
    home.stateVersion = "24.05"; 
    home.packages = [ pkgs.htop 
		      pkgs.fastfetch
		      pkgs.ripgrep
    ];
  };

  system.stateVersion = "26.05";
}
