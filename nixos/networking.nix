{ ... }:

{
  networking = {
    # Enable networking
    hostName = "kubo"; # Define your hostname.
    # Pick only one of the below networking options.
    # wireless.enable = true;  # Enables wireless support via wpa_supplicant.
    networkmanager.enable = true;  # Easiest to use and most distros use this by default.

    # 1g
    interfaces.enp7s0.useDHCP = true;
    # 2.5g
    interfaces.enp8s0 = {
      ipv4.addresses = [{
        address = "172.16.0.2";
        prefixLength = 16;
      }];
    };

    # dual sfp card -- not installed
    # interfaces.enp5s0f0.ipv4.addresses = [{
    #   address = "172.16.0.2";
    #   prefixLength = 16;
    # }];
    # interfaces.enp5s0f1.ipv4.addresses = [{
    #   address = "172.16.0.2";
    #   prefixLength = 16;
    # }];
  };


  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

}
