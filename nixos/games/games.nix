{ config, pkgs, ... }:
let
  aagl-gtk-on-nix = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/main.tar.gz");
  # Or, if you follow Nixpkgs release 24.05:
  # aagl-gtk-on-nix = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/release-24.05.tar.gz");
  aaglPkgs = aagl-gtk-on-nix.withNixpkgs pkgs;
in
{
  imports = [
    # aagl-gtk-on-nix.module
    aaglPkgs.module
  ];

  programs.anime-game-launcher.enable = true;
  programs.anime-games-launcher.enable = false;
  programs.anime-borb-launcher.enable = false;
  programs.honkers-railway-launcher.enable = false;
  programs.honkers-launcher.enable = false;
  programs.wavey-launcher.enable = false;
  programs.sleepy-launcher.enable = true;
}
