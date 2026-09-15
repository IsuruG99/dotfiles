{ config, pkgs, lib, ... }:

{
  home.username = "isurug";
  home.homeDirectory = "/home/isurug";
  home.stateVersion = "26.05";

  targets.genericLinux.enable = true;
  targets.genericLinux.gpu.enable = true;

  home.packages = [
    pkgs.ripgrep
    pkgs.fd
    pkgs.jq
    pkgs.tree
    
    pkgs.i3
    pkgs.i3status
    pkgs.hyprland
    pkgs.waybar

    pkgs.blueman
   
    pkgs.vesktop
    pkgs.kitty
    pkgs.rofi
    pkgs.qimgv
    pkgs.grimblast
    pkgs.neovim
    pkgs.git
  ];
   home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.home-manager.enable = true;
}
