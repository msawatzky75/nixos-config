{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };
  hardware.graphics.enable32Bit = true;
  hardware.pulseaudio.support32Bit = true;
}
