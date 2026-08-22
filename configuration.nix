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

  system.stateVersion = "26.05";
}
