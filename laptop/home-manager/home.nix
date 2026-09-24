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
    pkgs.nerd-fonts.jetbrains-mono
    
    pkgs.i3
    pkgs.i3status
    pkgs.hyprland
    pkgs.hyprcursor
    pkgs.xcur2png
    pkgs.waybar

    pkgs.blueman
    pkgs.pavucontrol
    pkgs.nmgui
    pkgs.docker

    pkgs.vesktop
    pkgs.kitty
    pkgs.rofi
    pkgs.qimgv
    pkgs.grimblast
    pkgs.neovim
    pkgs.git

    pkgs.gns3-gui
    pkgs.gns3-server
    pkgs.dynamips
    pkgs.ubridge
    pkgs.vpcs
    pkgs.qemu
    pkgs.libvirt
    pkgs.virt-manager
    pkgs.xterm
    pkgs.tigervnc
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
