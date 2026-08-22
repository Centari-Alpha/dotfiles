{ config, lib, pkgs, ... }:

{
  imports = [];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  wsl.enable = true;
  wsl.defaultUser = "Centari";

  users.users.Centari = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; 
  }; 

  environment.systemPackages = with pkgs; [
    git vim wget
  ];

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users.Centari = { pkgs, ... }: {
    home.stateVersion = "24.05"; 
    home.packages = [ pkgs.htop 
		      pkgs.fastfetch
		      pkgs.ripgrep
    ];
    
    programs.git = {
      enable = true;
      userName = "Centari-Alpha";
      userEmail = "djbrodka@gmail.com";
    };
  };

  system.stateVersion = "26.05";
}
