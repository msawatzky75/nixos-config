sudo cp ./nixos/* /etc/nixos
sudo chown root:root /etc/nixos
./update-home.sh
sudo nixos-rebuild switch --flake /etc/nixos#kubo --update-input nixpkgs --update-input rust-overlay --commit-lock-file --upgrade
