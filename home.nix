{ config, pkgs, ... }:

{
  home.username = "Centari";
  home.homeDirectory = "/home/Centari";
  home.stateVersion = "24.05";

  home.packages = with pkgs; [
    htop
    fastfetch
  ];

  programs.git = {
    enable = true;
    userName = "Centari-Alpha";
    userEmail = "djbrodka@gmail.com";
  };
}
