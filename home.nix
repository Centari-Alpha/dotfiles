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

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = ''
      bindkey '^f' autosuggest-accept
    '';
    shellAliases = {
      ".." = "cd ..";
      add = "git add .";
      push = "git push";
      pull = "git pull";
      m = "git switch main";
    };
  };

  home.file.".config/wezterm".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/.config/wezterm";
  home.file.".config/nvim".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/.config/nvim";

  programs.git = {
    enable = true;
    userName = "Centari-Alpha";
    userEmail = "djbrodka@gmail.com";
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$directory$git_branch$git_status$cmd_duration$line_break$character";
      character = {
        success_symbol = "[>](purple)";
        error_symbol = "[>](red)";
      };
      cmd_duration.format = "[$duration]($style) ";
    };
  };
}
