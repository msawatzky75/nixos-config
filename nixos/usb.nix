{ pkgs, ... }:

{
  # USB Automounting
  services.gvfs.enable = true;
  # services.udisks2.enable = true;
  # services.devmon.enable = true;

  # Enable USB Guard
  services.usbguard = {
    enable = false;
    dbus.enable = true;
    implicitPolicyTarget = "block";
    # FIXME: set yours pref USB devices (change {id} to your trusted USB device), use `lsusb` command (from usbutils package) to get list of all connected USB devices including integrated devices like camera, bluetooth, wifi, etc. with their IDs or just disable `usbguard`
    rules = ''
      allow id 1d6b:0002
      allow id 05e3:0610
      allow id 05e3:0610
      allow id 1d50:615e
      allow id 8087:0029
      allow id 046d:c08b
      allow id 046d:0ab7
      allow id 1d6b:0003
      allow id 05e3:0626
      allow id 1d6b:0002
      allow id 0b05:18f3
      allow id 1d6b:0003
      allow id 0bda:9210
      allow id 1d6b:0002
      allow id 28de:2613
      allow id 0424:2744
      allow id 28de:2300
      allow id 28de:2102
      allow id 28de:2102
      allow id 0424:2740
      allow id 1d6b:0003
      allow id 0424:5744
      allow id 28de:2400
    '';
  };

  # Enable USB-specific packages
  environment.systemPackages = with pkgs; [
    usbutils
  ];
}
