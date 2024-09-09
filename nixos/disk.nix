{ ... }:

{
    fileSystems."/home/matthew/.ssh" = {
        device = "/home/matthew/nixos-config/home/.ssh";
        fsType = "none";
        options = [ "bind" ];
    };
}
