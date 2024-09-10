{ inputs, pkgs, ... }:

{
  # nixpkgs.overlays = [
  #   inputs.hyprland.overlays.default
  #   inputs.hyprland.overlays.hyprland-packages
  # ];

  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;
  };
  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  # environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  environment.systemPackages = with pkgs; [
    #pyprland
    hyprpicker
    hyprcursor
    #hyprpaper
    hyprshot

    kitty
    helix

    #qutebrowser
    zathura
    mpv
    imv
  ];

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
}

