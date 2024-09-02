{ inputs, pkgs, system, ... }:

{
  nixpkgs.overlays = [
    inputs.hyprland.overlays.default
    inputs.hyprland.overlays.hyprland-packages
  ];
  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;
  };
  #environment.sessionVariables.NIXOS_OZONE_WL = "1";
  #environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  environment.systemPackages = with pkgs; [
    #pyprland
    hyprpicker
    hyprcursor
    #hyprlock
    #hypridle
    #hyprpaper

    kitty

    starship
    helix

    #qutebrowser
    zathura
    mpv
    imv
  ];
}

