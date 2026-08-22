{ config, pkgs, ... }:

let
  dotfiles = "${config.home.homeDirectory}/.dotfiles";
in

{
  home.username = "Centari";
  home.homeDirectory = "/home/Centari";
  home.stateVersion = "24.05";

  home.packages = with pkgs; [
    htop
    fastfetch
    ripgrep
    fd
    fzf
    jq
    lazygit
    neovim
    nerd-fonts.hack
  ];
  
  fonts.fontconfig.enable = true;
  home.sessionVariables.EDITOR = "nvim";

  home.file.".config/wezterm".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/.config/wezterm";

  programs.git = {
    enable = true;
    userName = "Centari-Alpha";
    userEmail = "djbrodka@gmail.com";
  };
}
