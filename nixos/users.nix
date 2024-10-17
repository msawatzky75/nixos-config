{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.matthew = {
    isNormalUser = true;
    description = "matthew";
    extraGroups = [ "networkmanager" "input" "wheel" "video" "render" "audio" "tss" "corectrl" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      spotify
      discord
      firefox
    ];
  };

  # Change runtime directory size
  services.logind.extraConfig = "RuntimeDirectorySize=8G";
}
