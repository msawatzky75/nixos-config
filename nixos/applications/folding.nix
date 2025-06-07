{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  hardware.amdgpu.opencl.enable = true;
  hardware.graphics.extraPackages = with pkgs; [
    rocmPackages.clr.icd
    rocmPackages.rocblas
    rocmPackages.hipblas
    rocmPackages.clr
  ];
  nixpkgs.config.rocmSupport = true;
  environment.systemPackages = with pkgs; [
    clinfo
    mesa
    ocl-icd
  ];
  services.foldingathome = {
    enable = true;
    user = "msawatzky75";
    team = 1065907;
    daemonNiceLevel = 15;
  };
}
