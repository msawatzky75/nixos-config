{ pkgs, ... }:

{
  programs = {
    gamescope = {
      enable = true;
      capSysNice = true;
    };
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
      gamescopeSession.enable = true;
    };
  };

  hardware.xone.enable = true;
  hardware.graphics.enable32Bit = true;
  hardware.pulseaudio.support32Bit = true;

  services.getty.autologinUser = "matthew";
  environment = {
    systemPackages = [pkgs.mangohud];
    loginShellInit = ''
      [[ "$(tty)" = "/dev/tty1" ]] && ./gs.sh
    '';
  };
}
