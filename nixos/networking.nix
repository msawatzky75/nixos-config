{ ... }:

{
  # Enable networking
  networking.hostName = "kubo"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  networking.interfaces.enp5s0f1.ipv4.addresses = [{
    address = "172.16.0.2";
    prefixLength = 16;
  }];
  networking.interfaces.enp5s0f0.ipv4.addresses = [{
    address = "172.16.0.2";
    prefixLength = 16;
  }];
}
