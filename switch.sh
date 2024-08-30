sudo cp ./nixos/* /etc/nixos
sudo nixos-rebuild switch --flake /etc/nixos#kubo --update-input nixpkgs --update-input rust-overlay --commit-lock-file --upgrade
