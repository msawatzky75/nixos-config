if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

pushd "`dirname "$0"`"
./update-config.sh
#./update-home.sh
# NIXOS_SWITCH_USE_DIRTY_ENV=1
nixos-rebuild switch --flake /etc/nixos#kubo --update-input nixpkgs --update-input hyprland --upgrade --commit-lock-file # --impure
cp /etc/nixos/flake.lock ../nixos/
popd
