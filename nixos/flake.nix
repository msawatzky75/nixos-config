{
  description = "Matthew's NixOS Configuration";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
      aagl.url = "github:ezKEa/aagl-gtk-on-nix";
      aagl.inputs.nixpkgs.follows = "nixpkgs";
      nix-vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
  };

  outputs = { self, nixpkgs, ... } @ inputs:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations.kubo = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs system; };
      system = system;
      modules = [
        ./configuration.nix
        ./hardware-configuration.nix
        ./disk.nix
        # ./nvidia.nix
        # ./disable-nvidia.nix
        # ./opengl.nix
        ./config/graphics.nix
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
        ./virtualisation.nix
        ./programming-languages.nix
        ./info-fetchers.nix
        ./utils.nix
        ./terminal-utils.nix
        # ./virtual-machine.nix
        ./games/default.nix
        ./flatpak.nix
        ./applications/folding.nix
        ./applications/vscode.nix
      ];
    };
  };
}
