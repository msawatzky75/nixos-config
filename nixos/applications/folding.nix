{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  # hardware.amdgpu.opencl.enable = true;
  # hardware.graphics.extraPackages = with pkgs; [
  #   rocmPackages.clr.icd
  # ];
  nixpkgs.config.rocmSupport = true;
  environment.systemPackages = with pkgs; [
    clinfo
  ];
  services.foldingathome = {
    enable = true;
    user = "msawatzky75";
    team = 1065907;
    daemonNiceLevel = 15;
  };
}
