{
  description = "Matthew's NixOS Configuration";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
      aagl.url = "github:ezKEa/aagl-gtk-on-nix";
      aagl.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, ... } @ inputs:
  {
    nixosConfigurations.kubo = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
        modules = [
        ./configuration.nix
        ./hardware-configuration.nix
        # ./nvidia.nix
        # ./disable-nvidia.nix
        ./opengl.nix
        # ./clamav-scanner.nix
        # ./yubikey.nix
        ./sound.nix
        ./usb.nix
        ./time.nix
        ./swap.nix
        ./bootloader.nix
        ./nix-settings.nix
        ./nixpkgs.nix
        ./gc.nix
        # ./auto-upgrade.nix
        ./linux-kernel.nix
        ./screen.nix
        ./display-manager.nix
        ./theme.nix
        ./internationalisation.nix
        ./fonts.nix
        ./security-services.nix
        ./services.nix
        # ./printing.nix
        ./hyprland.nix
        ./environment-variables.nix
        ./bluetooth.nix
        ./networking.nix
        # ./mac-randomize.nix
        ./open-ssh.nix
        ./firewall.nix
        # ./vpn.nix
        ./users.nix
        #./virtualisation.nix
        ./programming-languages.nix
        ./info-fetchers.nix
        ./utils.nix
        ./terminal-utils.nix
        # ./virtual-machine.nix
        ./games/default.nix
        ./vscode.nix
        ./flatpak.nix
      ];
    };
  };
}
