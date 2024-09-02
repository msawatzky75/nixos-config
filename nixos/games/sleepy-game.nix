{ inputs, config, pkgs, ... }:
let
  # aagl-gtk-on-nix = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/main.tar.gz");
  # Or, if you follow Nixpkgs release 24.05:
  # aagl-gtk-on-nix = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/release-24.05.tar.gz");
  # aaglPkgs = aagl-gtk-on-nix.withNixpkgs pkgs;
in
{
  imports = [
    inputs.aagl.nixosModules.default
    # aagl-gtk-on-nix.module
    # aaglPkgs.module
  ];

  nix.settings = inputs.aagl.nixConfig;

  programs.sleepy-launcher.enable = true;
}
