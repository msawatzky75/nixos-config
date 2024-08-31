pushd "`dirname "$0"`"
./update-config.sh
./update-home.sh
NIXOS_SWITCH_USE_DIRTY_ENV=1 nixos-rebuild boot --flake /etc/nixos#kubo --update-input nixpkgs --commit-lock-file --upgrade --option sandbox false
popd
